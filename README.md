# Basic Kernels developed for the CHISEL Hardware Descriptor Language

## What This Is

These are some very basic compute kernels I developed mostly to experiment with the CHISEL HDL.

Developed in part to satisfy requirements for CS223, Reconfigurable Computing, as taught in Fall 2019 quarter at the University of California, Riverside.

## Using This Repo

Clone the repository as per usual.

You will need to have the Scala Build Tool installed per instructions available [here](https://github.com/ucb-bar/chisel-tutorial/wiki/chisel-installation).

In the `chisel-kernels` directory, run `sbt test`. Once that runs, there will be Verilog output available for inspection in the `test_run_dir/` folder that is created when you run tests.

Any new kernels should go in `src/main/scala/MyNewKernel`. The main definition for your new kernel's class ought to go in `src/main/scala/MyNewKernel/MyNewKernel.scala`.

Any tests for those kernels should go in `src/test/scala/test_MyNewKernel.scala`.
