# True Random Number Generator (TRNG)

## Project Overview

This project implements a True Random Number Generator (TRNG) using a Ring Oscillator architecture.

The design generates random bits using oscillation-based entropy and processes the output through multiple stages before storing the generated random data.

---

## Main Modules

### 1. Ring Oscillator
Generates oscillating signal used as entropy source.

### 2. Sampler
Samples the oscillator output using the system clock.

### 3. Post Processor
Processes sampled bits to improve randomness.

### 4. Health Checker
Checks repeated patterns in generated bits.

### 5. Output Register
Stores generated random bits into a 32-bit register.

---

## Inputs and Outputs

### Inputs
- clk : System clock
- rst_n : Active low reset

### Outputs
- uo_out[7:0] : Random output bits
- ready : Indicates random data is ready

---

## Tools Used

- Verilog HDL
- GTKWave
- Icarus Verilog
- OpenLane
- TinyTapeout

---

## Author

Nevin R Philip
