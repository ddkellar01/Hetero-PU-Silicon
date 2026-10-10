def quantize_to_int8(fp32_weights):
    # NPU relies on INT8 / INT4 quantized inference[span_17](start_span)[span_17](end_span)
    print("NPU pre-processing: Quantizing FP32 model to INT8...")
    int8_weights = [int(w * 127) for w in fp32_weights]
    print("NPU pre-processing: Model ready for on-device AI.")
    return int8_weights
