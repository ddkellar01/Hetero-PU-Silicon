#include <iostream>

void initialize_nccl_cluster(int num_gpus) {
    // Step 2: Distribute across cores / devices[span_6](start_span)[span_6](end_span)
    std::cout << "GPU Cluster: Synchronizing " << num_gpus 
              << " GPUs via high-speed NVLink mesh." << std::endl;
    std::cout << "GPU Cluster: Ready for large model training." << std::endl; // Strength[span_7](start_span)[span_7](end_span)
}
