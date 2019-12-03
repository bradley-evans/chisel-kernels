package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class ConvolutionTests(c: ConvolutionKernel) extends PeekPokeTester(c) {
  // The below test just assumes that we are feeding the accelerator
  // one complete tile, zero-padded as necessary (though zero padding
  // isn't actively tested here). In practice, we need to build out a
  // way of generating each tile and feeding that matrix subset and
  // the kernel into the accelerator.
  val input = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << 8) // leftshift 8 to limit max to 255.
  }
  val kernel = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << 8) // leftshift 8 to limit max to 255.
  }
  var sum = 0
  // Poke cannot use vectors directly right now,
  // so we poke each element individually.
  input.zipWithIndex.foreach { case (value, index) => poke(c.io.in(index), value.U) }
  kernel.zipWithIndex.foreach { case (value, index) => poke(c.io.kernel(index), value.U) }
  poke(c.io.load, true.B)
  step(1)
  // Now we can check the output matrix on c.io.C.
  sum = 0
  for (i <- 0 until c.m*c.n) {
      sum = sum + input(i) * kernel(i) 
  }
  expect(c.io.out,sum.U)
}

class ConvolutionKernelTester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "Convolution" should s"calculate one element of a matrix convolved with a given kernel (with $backendName)" in {
      Driver(() => new ConvolutionKernel(3,3,16), backendName) {
        c => new ConvolutionTests(c)
      } should be (true)
    }
  }
}
