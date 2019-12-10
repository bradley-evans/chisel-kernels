package kernels

import chisel3._

// From the front page example given on chisel_lang
// Generalized FIR filter parameterized by the convolution coefficients
class Md5(bitWidth: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(bitWidth.W))
    val out = Output(UInt(128.W))
  })
  /*  
  val buffer = new Bundle {
    val A = "h67452301".U
    val B = "hEFCDAB89".U
    val C = "h98BADCFE".U
    val D = "h10325476".U
  }
  
  // Stage 1.
  val shiftsize = (448 - (bitWidth % 512))
  var arr_width = bitWidth + shiftsize
  val stg1_padd = UInt(arr_width.W)
  val bit_arr = UInt(arr_width.W)
  bit_arr := (io.in << (448 - (bitWidth % 512))) ^ stg1_padd

  */
}
