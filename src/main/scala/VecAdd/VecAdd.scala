package kernels

import chisel3._

class Adder(val w: Int) extends Module {
  // Simple adder with parameterized width.
  // Width of adder given by parameter w.
  val io = IO(new Bundle {
    val in0 = Input(UInt(w.W))
    val in1 = Input(UInt(w.W))
    val out = Output(UInt(w.W))
  })
  io.out := io.in0 + io.in1
}

class VecAdd(val n: Int, val m: Int, val w: Int) extends Module {
  // Vector add module.
  // Adds vectors of width n, height m (nxm)
  val io = IO(new Bundle {
    val A = Input(Vec(m, Vec(n, UInt(w.W))))
    val B = Input(Vec(m, Vec(n, UInt(w.W))))
    val C = Output(Vec(m, Vec(n, UInt(w.W))))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  when (io.load) {
    for (i <- 0 until m) {
      for (j <- 0 until n) {
        io.C(i)(j) := io.A(i)(j) + io.B(i)(j)
      }
    }
  }
}
