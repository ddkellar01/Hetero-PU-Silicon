import json
import subprocess

def test_mesh_routing():
    with open("configs/mesh_router.json", "r") as f:
        config = json.load(f)
    
    assert config["routing_rules"]["real_time_llm_serving"] == "LPU"
    assert config["routing_rules"]["data_center_infrastructure"] == "DPU"
    
    print("Mesh Router configuration passes validation.")
    print("To execute end-to-end integration, invoke the Rust CPU Orchestrator.")

if __name__ == "__main__":
    test_mesh_routing()
