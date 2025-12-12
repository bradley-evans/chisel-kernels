package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class Md5Tests(c: Md5) extends PeekPokeTester(c) {
  
  // Test case 1: Empty string
  // MD5("") = d41d8cd98f00b204e9800998ecf8427e
  poke(c.io.in, 0)
  step(1)
  val emptyResult = peek(c.io.out)
  val expectedEmpty = BigInt("d41d8cd98f00b204e9800998ecf8427e", 16)
  println(s"Empty string test:")
  println(s"  Got:      ${emptyResult.toString(16)}")
  println(s"  Expected: ${expectedEmpty.toString(16)}")
  expect(c.io.out, expectedEmpty)
  
  // Note: More sophisticated tests with actual string inputs would require
  // converting strings to bit patterns and ensuring proper endianness.
  // For hardware testing, we typically test with known bit patterns.
}

class Md5Tester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  
  for ( backendName <- backendNames ) {
    "Md5" should s"generate an md5 hash (with $backendName)" in {
      // Test with 0-bit input (empty message)
      Driver(() => new Md5(0), backendName) {
        c => new Md5Tests(c)
      } should be (true)
    }
  }
}
