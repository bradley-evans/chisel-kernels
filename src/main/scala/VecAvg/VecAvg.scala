package kernels

import chisel3._
import scala.collection.mutable.ArrayBuffer

class VecAvg(val m: Int, val w: Int) extends Module {
  // Vector averaging module.
  // This kernel will return the average value over an mxm
  // area.
  // Since CHISEL doesn't support matrix operations, we read the
  // matrix as a vector of length m * n.
  // USAGE: VecAvg(m, w)
  // PARAMETERS:
  //    m: size of averaging kernel
  //    w: bitwidth of unsigned integers given as inputs
  // Yields a vector of unsigned integers with bitwidth w+1 as
  // output in one cycle.
  val io = IO(new Bundle {
    // Initialize width of vectors to +1 over
    // parameter to avoid overflow.
    val A = Input(Vec(m*m, UInt((w+1).W)))
    val B = Output(UInt((w+1).W))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  var ans = UInt((w*2).W)
  when (io.load) { 
    ans = 0.U
    for (i <- 0 until m * m) {
      ans = ans + io.A(i)
    }
    ans = ans / (m*m).U
    io.valid := true.B
  } .otherwise {
    io.valid := false.B
  }
  io.B := ans
}
