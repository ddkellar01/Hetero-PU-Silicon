#ifndef LPU_TOKEN_GEN_H
#define LPU_TOKEN_GEN_H

// LPU utilizes on-chip SRAM for limited memory but extremely fast inference[span_12](start_span)[span_12](end_span)
#define LPU_SRAM_CAPACITY_MB 256 

void load_weights_to_sram(float* weights);
char* generate_next_token(const char* prompt);

#endif
