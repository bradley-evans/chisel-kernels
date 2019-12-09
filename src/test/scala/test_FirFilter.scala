package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class FirFilterTests(c: FirFilter) extends PeekPokeTester(c) {
  // TODO: tests

}

class FirFilterTester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "FirFilter" should s"a generalized fir filter (with $backendName)" in {
      Driver(() => new FirFilter(8,Seq(-2.S,-1.S,3.S,4.S)), backendName) {
        c => new FirFilterTests(c)
      } should be (true)
    }
  }
}
