package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class VecAvgTests(c: VecAvg) extends PeekPokeTester(c) {
  val matA = Array.fill(c.m * c.m) {
    rnd.nextInt(1 << 8)
  }
  var ans = 0
  // Poke cannot use vectors directly right now,
  // so we poke each element individually.
  matA.zipWithIndex.foreach { case (value, index) => poke(c.io.A(index), value.U) }
  poke(c.io.load, true.B)
  step(1)
  for (i <- 0 until c.m * c.m) {
    ans = ans + matA(i)
  }
  ans = ans / (c.m * c.m)
  expect(c.io.B, ans.U)
}

class VecAvgTester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "VecAvg" should s"calculate the average of one location on a matrix (with $backendName)" in {
      Driver(() => new VecAvg(10,16), backendName) {
        c => new VecAvgTests(c)
      } should be (true)
    }
  }
}
