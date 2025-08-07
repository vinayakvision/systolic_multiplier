# 💡 Systolic Array-Based Multiplier (Array Multiplication)

This project implements an **Array Multiplier using Systolic Array Architecture** in Verilog HDL. It showcases how a pipelined dataflow architecture like a **systolic array** can be used to perform high-speed **binary multiplication** with optimized hardware structure.

---

## 🧠 Introduction

A **Systolic Array Multiplier** is a hardware design that performs **binary multiplication** using a 2D array of interconnected processing elements (PEs). Unlike traditional multipliers, systolic arrays provide **parallelism, scalability, and regular structure**, making them suitable for high-performance computing in digital signal processing and embedded systems.

---

## ⚙️ Working Principle

- **Input Bits Flow**: Multiplicand and multiplier bits are streamed into the array from two perpendicular directions.
- **Processing Elements (PEs)**: Each PE performs basic operations like **bitwise AND**, **addition**, and **carry forwarding**.
- **Systolic Rhythm**: Data flows synchronously through the array, and partial results propagate through neighboring PEs in a pipelined fashion.
- **Final Output**: The product is accumulated gradually at the output nodes after multiple clock cycles.

This systolic mechanism results in **high throughput** with minimal control overhead.

---

## 📦 Requirements

### Tools:
- **Verilog HDL**
- **Xilinx Vivado** / **Icarus Verilog + GTKWave**

### Hardware (Optional):
- FPGA Board (Artix-7 / Spartan-6)

### Skills:
- Digital Logic Design
- Verilog RTL coding
- Pipelining & Parallel Architectures

---

## 🚀 Applications

- **Digital Signal Processing (DSP)**: FIR/IIR filters
- **Neural Networks**: MAC units in DNN hardware
- **Embedded Systems**: High-speed multiplier IPs
- **ASIC & FPGA IPs**: Custom hardware blocks for SoC designs
- **Low-Power VLSI Designs**: Efficient multiplier circuits in mobile processors

---

## ✅ Advantages

- ✔️ **Pipelined Parallelism**: Faster than conventional sequential multipliers
- ✔️ **Modular Design**: Easy to scale (N×N bit multiplication)
- ✔️ **Low Control Complexity**: No complex FSMs or control units
- ✔️ **Hardware Efficiency**: Regular layout fits well in ASICs & FPGAs
- ✔️ **High Throughput**: Continuous data input with minimal latency

---

## ⚠️ Disadvantages

- ❌ **Latency**: Final output appears after multiple clock cycles
- ❌ **Resource Usage**: Requires more area than serial multipliers
- ❌ **Fixed Bit Width**: Needs redesign for different operand sizes
- ❌ **Complex Debugging**: More signal lines due to parallel structure

---

## 🌱 Future Scope

- 🔄 **Parameterizable Bit Width** (e.g., 8-bit, 16-bit, 32-bit)
- 📡 **AXI Interface Integration** for SoC embedding
- 🧠 **Signed Multiplication Support** using Booth's Algorithm
- 🧮 **Array Divider / MAC Unit** based on the same systolic concept
- 🧾 **RTL to GDSII Flow** for ASIC tapeout
- ⚙️ **Power & Area Optimization** for low-power VLSI designs

---

> ✨ This project is ideal for learning pipelined digital design and preparing for **VLSI design roles** in companies like Synopsys, Intel, and Cadence.

