package kernels

import chisel3._
import scala.collection.mutable.ArrayBuffer

class ConvolutionKernel(val m: Int, 
                        val n: Int,
                        val w: Int) extends Module {
  // Computes one index of a convolution operation on a matrix.
  // Since CHISEL doesn't support matrix operations, we read the
  // matrix as a vector of length m * n.
  // USAGE: ConvoltionKernel(m, n, w)
  // PARAMETERS:
  //    m: width of kernel
  //    n: height of kernel
  //    w: bitwidth of unsigned integers given as input
  //    Yields the result of a convolution over a tile.
  val io = IO(new Bundle {
    // Initialize width of vectors to *2 over
    // parameter to avoid overflow.
    val in = Input(Vec(m*n, UInt((w*2).W)))
    val kernel = Input(Vec(m*n, UInt((w*2).W)))
    val out = Output(UInt((w*2).W))
    val load = Input(Bool())
    val valid = Output(Bool())
  })
  var ans = UInt((w*2).W)
  when (io.load) { 
    for (i <- 0 until m*n) {
      ans = ans + io.in(i) * io.kernel(i)
    }
    io.valid := true.B
  } .otherwise {
    io.valid := false.B
  }
  io.out := ans
}
