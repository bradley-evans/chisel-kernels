package kernels

import chisel3._
import chisel3.util._

// MD5 Hash Generator
// Implements the MD5 message-digest algorithm as specified in RFC 1321
// This is a combinational implementation for fixed-size inputs
class Md5(bitWidth: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(bitWidth.W))
    val out = Output(UInt(128.W))
  })

  // MD5 Constants: Initialization values for buffers A, B, C, D (per RFC 1321)
  val initA = "h67452301".U(32.W)
  val initB = "hEFCDAB89".U(32.W)
  val initC = "h98BADCFE".U(32.W)
  val initD = "h10325476".U(32.W)

  // MD5 T constants (derived from sine function)
  // T[i] = floor(2^32 * abs(sin(i + 1))) for i = 0 to 63
  val T = VecInit(Seq(
    "hd76aa478".U(32.W), "he8c7b756".U(32.W), "h242070db".U(32.W), "hc1bdceee".U(32.W),
    "hf57c0faf".U(32.W), "h4787c62a".U(32.W), "ha8304613".U(32.W), "hfd469501".U(32.W),
    "h698098d8".U(32.W), "h8b44f7af".U(32.W), "hffff5bb1".U(32.W), "h895cd7be".U(32.W),
    "h6b901122".U(32.W), "hfd987193".U(32.W), "ha679438e".U(32.W), "h49b40821".U(32.W),
    "hf61e2562".U(32.W), "hc040b340".U(32.W), "h265e5a51".U(32.W), "he9b6c7aa".U(32.W),
    "hd62f105d".U(32.W), "h02441453".U(32.W), "hd8a1e681".U(32.W), "he7d3fbc8".U(32.W),
    "h21e1cde6".U(32.W), "hc33707d6".U(32.W), "hf4d50d87".U(32.W), "h455a14ed".U(32.W),
    "ha9e3e905".U(32.W), "hfcefa3f8".U(32.W), "h676f02d9".U(32.W), "h8d2a4c8a".U(32.W),
    "hfffa3942".U(32.W), "h8771f681".U(32.W), "h6d9d6122".U(32.W), "hfde5380c".U(32.W),
    "ha4beea44".U(32.W), "h4bdecfa9".U(32.W), "hf6bb4b60".U(32.W), "hbebfbc70".U(32.W),
    "h289b7ec6".U(32.W), "heaa127fa".U(32.W), "hd4ef3085".U(32.W), "h04881d05".U(32.W),
    "hd9d4d039".U(32.W), "he6db99e5".U(32.W), "h1fa27cf8".U(32.W), "hc4ac5665".U(32.W),
    "hf4292244".U(32.W), "h432aff97".U(32.W), "hab9423a7".U(32.W), "hfc93a039".U(32.W),
    "h655b59c3".U(32.W), "h8f0ccc92".U(32.W), "hffeff47d".U(32.W), "h85845dd1".U(32.W),
    "h6fa87e4f".U(32.W), "hfe2ce6e0".U(32.W), "ha3014314".U(32.W), "h4e0811a1".U(32.W),
    "hf7537e82".U(32.W), "hbd3af235".U(32.W), "h2ad7d2bb".U(32.W), "heb86d391".U(32.W)
  ))

  // Shift amounts for each round (per RFC 1321)
  val S = VecInit(Seq(
    7.U, 12.U, 17.U, 22.U, 7.U, 12.U, 17.U, 22.U, 7.U, 12.U, 17.U, 22.U, 7.U, 12.U, 17.U, 22.U,
    5.U, 9.U, 14.U, 20.U, 5.U, 9.U, 14.U, 20.U, 5.U, 9.U, 14.U, 20.U, 5.U, 9.U, 14.U, 20.U,
    4.U, 11.U, 16.U, 23.U, 4.U, 11.U, 16.U, 23.U, 4.U, 11.U, 16.U, 23.U, 4.U, 11.U, 16.U, 23.U,
    6.U, 10.U, 15.U, 21.U, 6.U, 10.U, 15.U, 21.U, 6.U, 10.U, 15.U, 21.U, 6.U, 10.U, 15.U, 21.U
  ))

  // Auxiliary Functions (per RFC 1321)
  // F(X,Y,Z) = XY v not(X) Z
  def F(x: UInt, y: UInt, z: UInt): UInt = (x & y) | (~x & z)
  
  // G(X,Y,Z) = XZ v Y not(Z)
  def G(x: UInt, y: UInt, z: UInt): UInt = (x & z) | (y & ~z)
  
  // H(X,Y,Z) = X xor Y xor Z
  def H(x: UInt, y: UInt, z: UInt): UInt = x ^ y ^ z
  
  // I(X,Y,Z) = Y xor (X v not(Z))
  def I(x: UInt, y: UInt, z: UInt): UInt = y ^ (x | ~z)

  // Left circular shift operation
  def leftRotate(x: UInt, c: UInt): UInt = {
    val shift = c(4, 0) // Use only lower 5 bits for shift amount
    (x << shift) | (x >> (32.U - shift))
  }

  // Padding function: Adds padding to message to make it 512-bit aligned
  def padMessage(msg: UInt, msgLen: Int): UInt = {
    // Calculate padding: message + '1' bit + '0' bits + 64-bit length
    val msgBits = msgLen
    val paddingBits = ((448 - (msgBits + 1) % 512) + 512) % 512
    val totalBits = msgBits + 1 + paddingBits + 64
    
    // Original message length as 64-bit little-endian
    val lengthBits = msgLen.U(64.W)
    
    // Build padded message: length (64 bits) | zeros | 1 bit | message
    val padBit = 1.U(1.W)
    
    val padded = if (msgLen > 0 && paddingBits > 0) {
      Cat(lengthBits, 0.U(paddingBits.W), padBit, msg)
    } else if (msgLen > 0) {
      Cat(lengthBits, padBit, msg)
    } else if (paddingBits > 0) {
      Cat(lengthBits, 0.U(paddingBits.W), padBit)
    } else {
      Cat(lengthBits, padBit)
    }
    
    padded
  }

  // Parse message block into 16 words of 32 bits (little-endian)
  def parseBlock(block: UInt): Vec[UInt] = {
    val words = Wire(Vec(16, UInt(32.W)))
    for (i <- 0 until 16) {
      words(i) := block((i+1)*32-1, i*32)
    }
    words
  }

  // Process one 512-bit block through MD5 transformation
  def processBlock(words: Vec[UInt], bufA: UInt, bufB: UInt, bufC: UInt, bufD: UInt): (UInt, UInt, UInt, UInt) = {
    // Create wires for accumulation through the rounds
    val stateA = Wire(Vec(65, UInt(32.W)))
    val stateB = Wire(Vec(65, UInt(32.W)))
    val stateC = Wire(Vec(65, UInt(32.W)))
    val stateD = Wire(Vec(65, UInt(32.W)))

    // Initialize with input buffer values
    stateA(0) := bufA
    stateB(0) := bufB
    stateC(0) := bufC
    stateD(0) := bufD

    // 64 operations in 4 rounds of 16 operations each
    for (i <- 0 until 64) {
      val f = Wire(UInt(32.W))
      val g = Wire(UInt(4.W))

      if (i < 16) {
        // Round 1: F(B, C, D)
        f := F(stateB(i), stateC(i), stateD(i))
        g := i.U
      } else if (i < 32) {
        // Round 2: G(B, C, D)
        f := G(stateB(i), stateC(i), stateD(i))
        g := ((5 * i + 1) % 16).U
      } else if (i < 48) {
        // Round 3: H(B, C, D)
        f := H(stateB(i), stateC(i), stateD(i))
        g := ((3 * i + 5) % 16).U
      } else {
        // Round 4: I(B, C, D)
        f := I(stateB(i), stateC(i), stateD(i))
        g := ((7 * i) % 16).U
      }

      // Main MD5 transformation: A = B + ((A + F + T[i] + M[g]) <<< S[i])
      val sum = stateA(i) + f + T(i) + words(g)
      val rotated = leftRotate(sum, S(i))
      
      stateA(i + 1) := stateD(i)
      stateB(i + 1) := stateB(i) + rotated
      stateC(i + 1) := stateB(i)
      stateD(i + 1) := stateC(i)
    }

    // Add the original values to the accumulated values
    (bufA + stateA(64), bufB + stateB(64), bufC + stateC(64), bufD + stateD(64))
  }

  // Main MD5 computation
  val paddedMsg = padMessage(io.in, bitWidth)
  val paddedBits = ((bitWidth + 1 + ((448 - (bitWidth + 1) % 512) + 512) % 512 + 64))
  val numBlocks = paddedBits / 512
  
  // Process blocks sequentially (unrolled at elaboration time)
  val buffers = Wire(Vec(numBlocks + 1, Vec(4, UInt(32.W))))
  
  // Initialize first buffer
  buffers(0)(0) := initA
  buffers(0)(1) := initB
  buffers(0)(2) := initC
  buffers(0)(3) := initD

  // Process each 512-bit block
  for (blockIdx <- 0 until numBlocks) {
    val blockStart = blockIdx * 512
    val block = paddedMsg(blockStart + 511, blockStart)
    val words = parseBlock(block)
    
    val (newA, newB, newC, newD) = processBlock(
      words, 
      buffers(blockIdx)(0), 
      buffers(blockIdx)(1), 
      buffers(blockIdx)(2), 
      buffers(blockIdx)(3)
    )
    
    buffers(blockIdx + 1)(0) := newA
    buffers(blockIdx + 1)(1) := newB
    buffers(blockIdx + 1)(2) := newC
    buffers(blockIdx + 1)(3) := newD
  }

  // Concatenate final hash (little-endian order: A, B, C, D)
  io.out := Cat(buffers(numBlocks)(3), buffers(numBlocks)(2), buffers(numBlocks)(1), buffers(numBlocks)(0))
}
