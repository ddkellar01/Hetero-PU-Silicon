#!/bin/bash
echo "Building Hetero-PU-Silicon Mesh..."

# Build Rust CPU/DPU Orchestrator
cargo build --release

# Build GPU CUDA Kernels
nvcc -c src/parallel_gpu/cuda_kernel.cu -o build/gpu_kernel.o

# Build NPU/LPU C/C++ Kernels
gcc -c src/inference_lpu/lpu_sram.c -o build/lpu_sram.o
g++ -c src/edge_npu/quantized.cpp -o build/npu_quantized.o

echo "Build complete."
