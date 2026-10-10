#include <iostream>

void npu_edge_pipeline() {
    // Step 1 & 2: User input & On-device NPU activates[span_24](start_span)[span_24](end_span)
    std::cout << "NPU: User input detected. Activating AI in your pocket." << std::endl;

    // Step 3: Quantized inference (INT8 / INT4)[span_25](start_span)[span_25](end_span)
    std::cout << "NPU: Executing low-power INT8 quantized model." << std::endl;

    // Step 4 & 5: Millisecond response & Instant output[span_26](start_span)[span_26](end_span)
    std::cout << "NPU: Data stayed on device. Instant output delivered." << std::endl;
}
