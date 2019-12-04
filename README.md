# Project06: ARM Single-Cycle Processor Implementation in Digital
Ned Azar

This is an implementation of a single-cycle ARMv7 processor that can execute a
subset of instructions.

## Implemented Components
  - The PC (program counter) - a 32-bit register
  - Instruction memory - a sub-circuit with a ROM component for each test program.
  - The Register File - a sub-circuit that contains 15 32-bit registers
  - An ALU (arithmetic logic unit for basic calculations such as add, sub, mov) - An adder plus addition logic
  - Sign Extension Unit - a custom sub-circuit
  - Data memory - A RAM component
  - The Control Unit
  - The Data Path - busses that connect data between different sub-circuits
  - The Control Path - wires that connect the control unit to the different sub-circuits and MUXes
