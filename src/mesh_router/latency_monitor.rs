pub enum SiliconTarget { CPU, GPU, TPU, NPU, LPU, DPU }

pub fn select_lowest_latency_node(is_llm_task: bool, on_device: bool) -> SiliconTarget {
    // Decision guide: latency, power, cost, and scale[span_18](start_span)[span_18](end_span)
    if on_device {
        SiliconTarget::NPU // Edge/mobile inference[span_19](start_span)[span_19](end_span)
    } else if is_llm_task {
        SiliconTarget::LPU // Real-time LLM serving[span_20](start_span)[span_20](end_span)
    } else {
        SiliconTarget::GPU // Deep learning[span_21](start_span)[span_21](end_span)
    }
}
