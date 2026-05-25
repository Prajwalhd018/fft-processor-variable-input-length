# Design and Simulation of FFT Processor for Variable Input Length

## Overview
This project presents the design and simulation of a Fast Fourier Transform (FFT) Processor capable of handling variable input lengths using Verilog HDL and Cadence EDA tools.

The processor is based on the Radix-2 Decimation-In-Time (DIT) FFT algorithm and is designed with a modular and scalable architecture for efficient digital signal processing applications.

---

## Features
- Radix-2 DIT FFT architecture
- Variable input length support
- Modular butterfly unit design
- Twiddle factor generation
- Cadence-based simulation and verification
- Optimized hardware architecture
- Scalable design methodology

---

## Technologies Used
- Verilog HDL
- Cadence Virtuoso
- SimVision
- Genus Synthesis
- Digital Signal Processing Concepts

---

## Architecture
The FFT processor includes:
- Input Buffer
- Butterfly Computation Units
- Twiddle Factor Generator
- Control Logic
- Memory Management Blocks

---

## Algorithm Used
Radix-2 Decimation-In-Time (DIT) FFT Algorithm

The FFT reduces computational complexity from:

O(N²) → O(N log N)

---

## Simulation and Verification
The design was verified using Cadence simulation tools with multiple input sequences including:
- Uniform inputs
- Incremental sequences
- Arbitrary patterns

---

## Applications
- Wireless Communication
- OFDM Systems
- Radar Signal Processing
- Medical Imaging
- Multimedia Processing
- Spectral Analysis

---

## Future Scope
- FPGA Implementation
- Higher Point FFT (16/32/64 point)
- Pipelined FFT Architecture
- Low Power Optimization
- Real-Time DSP Applications

---

## Authors
- Prajwal H D
- Hemanth D
- Deeksha K S
- Priya B G

---

## Institution
PES Institute of Technology and Management (PESITM), Shivamogga  
Department of Electronics and Communication Engineering

---

## Project Type
Bachelor of Engineering Final Year Project

---

## Tools Used
- Cadence SimVision
- Cadence Genus
- Verilog HDL

---

## Repository Structure

```text
fft-processor-variable-input-length/
│
├── rtl/
├── tb/
├── docs/
├── simulation/
└── results/
```
