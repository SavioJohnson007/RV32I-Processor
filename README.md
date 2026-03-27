RV32I Processor (RISC-V 32-bit Integer Core)

This repository contains a custom-designed RV32I processor implementing the base integer instruction set of the RISC-V architecture. The design follows a modular approach, with clearly separated components such as the control unit, ALU, register file, instruction memory, and data memory.

The processor is built using a single-cycle architecture, making it simple, deterministic, and suitable for academic exploration and hardware understanding. It supports core instruction types including arithmetic, logical, load/store, and branch operations.

Key features:

Full support for RV32I base instruction set
Modular Verilog design for easy debugging and extension
Byte-addressable instruction and data memory
Immediate generation for I, S, and B-type instructions
Comprehensive testbench with initialised memory and register states

This project is intended for learning, experimentation, and as a foundation for extending into pipelined or advanced RISC-V implementations.
