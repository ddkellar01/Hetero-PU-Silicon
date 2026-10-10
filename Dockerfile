FROM ubuntu:22.04

# Install Rust, C++, Python, and CUDA toolkit (for massive parallelism[span_2](start_span)[span_2](end_span))
RUN apt-get update && apt-get install -y build-essential python3 python3-pip curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

WORKDIR /app
COPY . .
RUN ./build.sh

CMD ["./target/release/hetero-pu-silicon"]
