package kernels

import chisel3._

class VecAdd(val n: Int, val m: Int, val w: Int) extends Module {
  // Vector add module.
  // Adds vectors of width n, height m (nxm)
  // Since CHISEL doesn't support matrix operations, we read the
  // matrix as a vector of length m * n.
  val io = IO(new Bundle {
    val A = Input(Vec(m*n, UInt(w.W)))
    val B = Input(Vec(m*n, UInt(w.W)))
    val C = Output(Vec(m*n, UInt(w.W)))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  when (io.load) { 
    for (i <- 0 until m) {
      for (j <- 0 until n) {
        io.C( i*n + j ) := io.A( i*n + j ) + io.B( i*n + j )
      }
    }
    io.valid := true.B
  } .otherwise {
    io.valid := false.B
  }
}
