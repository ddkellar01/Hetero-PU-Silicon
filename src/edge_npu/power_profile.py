def check_npu_power_envelope(watts_consumed):
    # NPU strengths: Very low power, AI in your pocket[span_16](start_span)[span_16](end_span)
    MAX_ALLOWABLE_POWER_WATTS = 5.0
    if watts_consumed <= MAX_ALLOWABLE_POWER_WATTS:
        print(f"NPU Envelope: Optimal edge power state ({watts_consumed}W).")
    else:
        print("NPU Envelope Warning: Throttle requested for power saving.")
