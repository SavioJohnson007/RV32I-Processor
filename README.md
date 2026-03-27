## RV32I Processor (RISC-V 32-bit Integer Core)

This repository contains a custom-designed RV32I processor implementing the base integer instruction set of the RISC-V architecture.

The design follows a clean and modular single-cycle architecture, making it easy to understand, debug, and extend. Core components such as the control unit, ALU, register file, instruction memory, and data memory are implemented as separate modules for clarity and scalability.

### Features
- Full support for RV32I base integer instruction set
- Single-cycle architecture for deterministic execution
- Modular Verilog design
- Byte-addressable instruction and data memory
- Immediate generation for I-type, S-type, and B-type instructions
- Clean and structured testbench for validation

### Purpose
This project is intended for learning, academic use, and as a foundation for building more advanced RISC-V processors such as pipelined or multi-cycle architectures.
