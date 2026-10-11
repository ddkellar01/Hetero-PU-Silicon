# 🧬 Hetero-PU-Silicon

![CI Status](https://github.com/ddkellar01/Hetero-PU-Silicon/actions/workflows/ci.yml/badge.svg)
![Rust Version](https://img.shields.io/badge/rust-edition%202021-orange.svg)
![Python Version](https://img.shields.io/badge/python-3.10-blue.svg)
![Docker](https://img.shields.io/badge/docker-supported-2496ED.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

Hetero-PU-Silicon is a unified orchestrator dynamically routing AI workloads across six specialized silicon architectures[span_2](start_span)[span_2](end_span). It seamlessly integrates CPUs, DPUs, GPUs, TPUs, LPUs, and NPUs to optimize the end-to-end pipeline for infrastructure offloading, massive parallel training, ultra-low latency LLM serving, and quantized edge inference[span_3](start_span)[span_3](end_span).

---

## 🧠 What is this about?
* **Heterogeneous Architecture Orchestration**: It bridges disparate hardware components into a single collaborative pipeline[span_4](start_span)[span_4](end_span).
* **Multi-Chip Ecosystem**: Integrates Central Processing Units (CPUs), Data Processing Units (DPUs), Graphics Processing Units (GPUs), Tensor Processing Units (TPUs), Language Processing Units (LPUs), and Neural Processing Units (NPUs)[span_5](start_span)[span_5](end_span).
* **High-Performance AI Infrastructure**: Designed for cutting-edge deployments requiring extreme throughput and low latency[span_6](start_span)[span_6](end_span).

---

## ⚡ What this does?
* **Dynamic Workload Routing**: Automatically routes tasks based on specific optimization rules (e.g., CPU for orchestration preprocessing, GPU for deep learning training, TPU for tensor operations, LPU for real-time LLM serving, and NPU for edge mobile inference)[span_7](start_span)[span_7](end_span).
* **Zero-Copy Payload Offloading**: Uses DPU SmartNICs to intercept and route network packets directly to storage and hardware memory without slowing down the main processor[span_8](start_span)[span_8](end_span).
* **Quantized Edge Inference**: Compresses and optimizes models to INT8 precision for power-saving, on-device AI execution[span_9](start_span)[span_9](end_span).

---

## ⚙️ How this works?
* **Async Rust Core**: Powered by a high-performance Tokio-based asynchronous orchestrator (`main.rs`, `scheduler.rs`)[span_10](start_span)[span_10](end_span).
* **Mesh Routing Engine**: Evaluates task parameters in real time via `latency_monitor.rs` to select the lowest-latency chip target[span_11](start_span)[span_11](end_span).
* **Specialized Bindings & Kernels**: Leverages CUDA kernels (`cuda_kernel.cu`) for GPU parallelization, JAX systolic arrays for TPUs (`systolic_array.py`), and custom C/C++ memory allocators for LPUs (`sram_allocator.c`)[span_12](start_span)[span_12](end_span).

---

## 🔥 Why this is cool?
* **Unified Power**: Combines heavy-duty cloud hardware and edge devices under one clean software roof[span_13](start_span)[span_13](end_span).
* **Lightning Fast**: Achieves ultra-low latency LLM serving and massive parallel training using hardware-specific accelerations like NVLink mesh clustering[span_14](start_span)[span_14](end_span).
* **Smart Resource Management**: Balances workloads dynamically so every chip handles what it does best[span_15](start_span)[span_15](end_span).

---

## 🛠️ What problems this solves?
* **Hardware Silos**: Eliminates the difficulty of making different types of AI chips work together harmoniously[span_16](start_span)[span_16](end_span).
* **Inference Bottlenecks**: Solves high-latency delays during real-time large language model (LLM) generation[span_17](start_span)[span_17](end_span).
* **Power Inefficiencies**: Reduces power waste on mobile and edge devices through smart quantization and power profiling[span_18](start_span)[span_18](end_span).

---

## 📦 How to install this?

1. **Clone the Repository**:
   ```bash
   git clone [https://github.com/ddkellar01/Hetero-PU-Silicon.git](https://github.com/ddkellar01/Hetero-PU-Silicon.git)
   cd Hetero-PU-Silicon
