package kernels

import chisel3._
import scala.collection.mutable.ArrayBuffer

class VecMul(
      val m: Int, // width of matrix A
      val n: Int, // height of matrix A, width of matrix B
      val p: Int, // height of matrix B
      val w: Int) // bitwidth of matrix elements
      extends Module {
  // Vector multiplication module.
  // 
  // Since CHISEL doesn't support matrix operations, we read the
  // matrix as a vector of length m * n.
  // USAGE: VecMul(m, n, p, q, w)
  // PARAMETERS:
  //    m: width of matrix A
  //    n: height of matrix A, width of matrix B
  //    p: height of matrix B
  //    w: bitwidth of unsigned integers given as inputs
  val io = IO(new Bundle {
    // Initialize width of vectors to *2 over
    // parameter to avoid overflow.
    val A = Input(Vec(m*n, UInt((w*2).W)))
    val B = Input(Vec(n*p, UInt((w*2).W)))
    val C = Output(Vec(m*p, UInt((w*2).W)))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  var sum = UInt((w*2).W)
  val ans = new ArrayBuffer[UInt]()
  for (i <- 0 until m*p) {
    // Initialize the buffer with 0s.
    ans += 0.U
  }
  when (io.load) { 
    // ************************
    // TODO: matrix multiply implementation
    // ************************
    for (i <- 0 until m) {
      for (j <- 0 until p) {
        sum = 0.U
        for (k <- 0 until n) {
          sum = sum + io.A(i*n+k) * io.B(i*p+j)
        }
        ans(i*p+j) = sum
      }
    }
    io.valid := true.B
  } .otherwise {
    io.valid := false.B
  }
  io.C := VecInit(ans)
}
