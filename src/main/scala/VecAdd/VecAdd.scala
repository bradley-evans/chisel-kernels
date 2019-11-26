package kernels

import chisel3._
import scala.collection.mutable.ArrayBuffer

class VecAdd(val m: Int, val n: Int, val w: Int) extends Module {
  // Vector add module.
  // Adds vectors of width n, height m (nxm)
  // Since CHISEL doesn't support matrix operations, we read the
  // matrix as a vector of length m * n.
  // USAGE: VecAdd(m, n, w)
  // PARAMETERS:
  //    m: width of matrix
  //    n: height of matrix
  //    w: bitwidth of unsigned integers given as inputs
  // Yields a vector of unsigned integers with bitwidth w+1 as
  // output in one cycle.
  val io = IO(new Bundle {
    // Initialize width of vectors to +1 over
    // parameter to avoid overflow.
    val A = Input(Vec(m*n, UInt((w+1).W)))
    val B = Input(Vec(m*n, UInt((w+1).W)))
    val C = Output(Vec(m*n, UInt((w+1).W)))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  val ans = new ArrayBuffer[UInt]()
  for (i <- 0 until m*n) {
    // Initialize the buffer with 0s.
    ans += 0.U
  }
  when (io.load) { 
    for (i <- 0 until m) {
      for (j <- 0 until n) {
        ans( i*n + j ) = io.A( i*n + j ) + io.B( i*n + j )
      }
    }
    io.valid := true.B
  } .otherwise {
    io.valid := false.B
  }
  io.C := VecInit(ans)
}
