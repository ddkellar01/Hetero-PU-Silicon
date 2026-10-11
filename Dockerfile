# ==============================================================================
# Stage 1: Builder Environment
# ==============================================================================
FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies and build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Rust toolchain
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Grant execution permission to your build script and execute it
RUN chmod +x build.sh && ./build.sh

# ==============================================================================
# Stage 2: Lean Runtime Environment
# ==============================================================================
FROM ubuntu:22.04 AS runtime

WORKDIR /app

# Copy the compiled release binary from the builder stage
COPY --from=builder /app/target/release/hetero-pu-silicon /app/hetero-pu-silicon

# Expose port
EXPOSE 8080

# Execute the binary
CMD ["./hetero-pu-silicon"]

