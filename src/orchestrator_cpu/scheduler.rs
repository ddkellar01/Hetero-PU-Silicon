pub struct TaskQueue {
    tasks: Vec<String>,
}

impl TaskQueue {
    pub fn new() -> Self { TaskQueue { tasks: Vec::new() } }
    
    // CPU handles any task and schedules it[span_4](start_span)[span_4](end_span)
    pub fn schedule_task(&mut self, task: String) {
        println!("CPU: Scheduling new task -> {}", task);
        self.tasks.push(task);
    }

    pub fn pop_and_route(&mut self) -> Option<String> {
        self.tasks.pop() // Routes to processor[span_5](start_span)[span_5](end_span)
    }
}
