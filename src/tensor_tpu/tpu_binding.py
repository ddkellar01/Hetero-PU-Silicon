import jax
import jax.numpy as jnp

def tpu_pipeline(model_weights, input_data):
    print("TPU: Loading model for Google-Scale Tensor Processing") # Step 1[span_14](start_span)[span_14](end_span)
    
    # Step 2 & 3: Systolic array processing & Matrix ops on-chip[span_15](start_span)[span_15](end_span)
    def systolic_matmul(a, b):
        return jnp.dot(a, b)
    
    # Step 4: Pod scales out[span_16](start_span)[span_16](end_span)
    parallel_matmul = jax.pmap(systolic_matmul)
    
    result = parallel_matmul(model_weights, input_data)
    
    # Step 5: Trained model[span_17](start_span)[span_17](end_span)
    print("TPU: Tensor ops complete.")
    return result
