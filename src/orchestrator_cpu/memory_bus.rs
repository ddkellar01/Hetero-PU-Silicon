pub struct HostMemoryBus {
    allocated_bytes: usize,
}

impl HostMemoryBus {
    pub fn new() -> Self { HostMemoryBus { allocated_bytes: 0 } }

    // CPU handles OS orchestration and I/O management[span_4](start_span)[span_4](end_span)
    pub fn allocate_shared_buffer(&mut self, size: usize) -> *mut u8 {
        println!("CPU: Allocating {} bytes in host staging memory.", size);
        self.allocated_bytes += size;
        std::ptr::null_mut()
    }
}
