package kernels

import chisel3._
import scala.collection.mutable.ArrayBuffer

class ScalarVecMul(
      val m: Int, // width of matrix A
      val n: Int, // height of matrix A
      val x: Int, // scalar value we are multiplying by
      val w: Int) // bitwidth of matrix elements
      extends Module {
  // Vector scalar multiplication module.
  // 
  // Since CHISEL doesn't support matrix operations, we read the
  // matrix as a vector of length m * n.
  // USAGE: ScalarVecMul(m, n, x, w)
  // PARAMETERS:
  //    m: width of matrix A
  //    n: height of matrix
  //    x: Scalar to multiply by.
  //    w: bitwidth of unsigned integers given as inputs
  val io = IO(new Bundle {
    // Initialize width of vectors to *2 over
    // parameter to avoid overflow.
    val A = Input(Vec(m*n, UInt((w*2).W)))
    val x = Input(UInt((w*2).W))
    val B = Output(Vec(m*n, UInt((w*2).W)))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  val ans = new ArrayBuffer[UInt]()
  for (i <- 0 until m*n) {
    // Initialize the buffer with 0s.
    ans += 0.U
  }
  when (io.load) { 
    for (i <- 0 until m*n) {
        ans(i) = io.A(i) * io.x
    }
    io.valid := true.B
  } .otherwise {
    io.valid := false.B
  }
  io.B := VecInit(ans)
}
