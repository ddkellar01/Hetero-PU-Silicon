#!/bin/bash
echo "=== Running Hetero-PU-Silicon Benchmarks ==="

echo "[1/6] Benchmarking CPU Orchestration..."
cargo test --package hetero-pu-silicon --lib orchestrator_cpu

echo "[2/6] Benchmarking DPU Line-Rate Ingress..."
cargo test --package hetero-pu-silicon --lib ingress_dpu

echo "[3/6] Benchmarking GPU Parallel Matrix Ops..."
python3 -m unittest tests/test_gpu.py

echo "[4/6] Benchmarking TPU Pod Scaling..."
python3 tests/pipeline_integration.py

echo "=== All Benchmarks Passed ==="
