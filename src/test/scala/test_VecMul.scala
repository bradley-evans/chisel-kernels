package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class VecMulTests(c: VecMul) extends PeekPokeTester(c) {
  val matA = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << 8)
  }
  val matB = Array.fill(c.n * c.p) {
    rnd.nextInt(1 << 8) // limit size of random int to 255 with leftshift 8
  }
  var sum = 0
  // Poke cannot use vectors directly right now,
  // so we poke each element individually.
  matA.zipWithIndex.foreach { case (value, index) => poke(c.io.A(index), value.U) }
  matB.zipWithIndex.foreach { case (value, index) => poke(c.io.B(index), value.U) }
  poke(c.io.load, true.B)
  step(1)
  /*
  var done = peek(c.io.valid)
  while (done != 1) {
    // ideally this is done in one cycle,
    // but just in case, let's wait until
    // we see the valid bit go high
    step(1)
    done = peek(c.io.valid)
  }
  */
  // Now we can check the output matrix on c.io.C.
  for (i <- 0 until c.m) {
    for (j <- 0 until c.p) {
      sum = 0
      for (k <- 0 until c.n) {
        sum = sum + matA(i*c.n+k) * matB(k*c.p+j)
      }
      expect(c.io.C(i*c.p+j),sum.U)
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
