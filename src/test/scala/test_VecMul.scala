package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class VecMulTests(c: VecMul) extends PeekPokeTester(c) {
  val matA = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << c.w)
  }
  val matB = Array.fill(c.n * c.p) {
    rnd.nextInt(1 << c.w)
  }
  var sum = Int 
  // Poke cannot use vectors directly right now,
  // so we poke each element individually.
  matA.zipWithIndex.foreach { case (value, index) => poke(c.io.A(index), value.U) }
  matB.zipWithIndex.foreach { case (value, index) => poke(c.io.B(index), value.U) }
  poke(c.io.load, true.B)
  step(1)
  // Now we can check the output matrix on c.io.C.
  for (i <- 0 until c.m) {
    for (j <- 0 until c.p) {
      sum = 0.S
      for (k <- 0 until c.n) {
        sum = sum + matA(i*c.n+k) * matB(k*c.p+j)
      }
      expect(c.io.C(i*c.p+j),sum)
    }
  }
}

class VecMulTester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "VecMul" should s"calculate the matrix product of two input matrices (with $backendName)" in {
      Driver(() => new VecMul(10,10,5,16), backendName) {
        c => new VecMulTests(c)
      } should be (true)
    }
  }
}
