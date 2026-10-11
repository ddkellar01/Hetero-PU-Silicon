#!/bin/bash
set -e

echo "Building Hetero-PU-Silicon Mesh..."

# Create missing build directory for non-Rust components
mkdir -p build

# Build Rust CPU/DPU Orchestrator
cargo build --release

# Build GPU CUDA Kernels (safely check if nvcc exists)
if command -v nvcc &> /dev/null; then
    nvcc -c src/parallel_gpu/cuda_kernel.cu -o build/cuda_kernel.o
else
    echo "Warning: nvcc not found, skipping CUDA kernel compilation."
fi

# Build NPU/LPU C/C++ Kernels
gcc -c src/inference_lpu/lpu_sram.c -o build/lpu_sram.o
g++ -c src/edge_npu/quantized.cpp -o build/npu_quantized.o

echo "Build complete."
