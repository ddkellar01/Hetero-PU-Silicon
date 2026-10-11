# ==============================================================================
# Stage 1: Builder Environment
# ==============================================================================
FROM ubuntu:22.04 AS builder

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential system dependencies, compilers, and tools
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /app

# Copy all project files into the build container
COPY . .

# FIX APPLIED HERE: Grant execution permission to build.sh before running it
RUN chmod +x build.sh && ./build.sh

# ==============================================================================
# Stage 2: Lean Runtime Environment
# ==============================================================================
FROM ubuntu:22.04 AS runtime

# Set working directory
WORKDIR /app

# Copy the compiled release binary from the builder stage
# (Adjust path if your target output differs)
COPY --from=builder /app/target/release/hetero-pu-silicon /app/hetero-pu-silicon

# Expose the application port
EXPOSE 8080

# Command to execute the orchestrator binary
CMD ["./hetero-pu-silicon"]
