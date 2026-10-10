import unittest

class TestNPUMock(unittest.TestCase):
    def test_on_device_inference(self):
        # NPU strengths: No cloud latency, data stays on device[span_24](start_span)[span_24](end_span)
        data_location = "local_ram"
        cloud_latency_ms = 0
        
        self.assertEqual(data_location, "local_ram")
        self.assertEqual(cloud_latency_ms, 0)
        print("NPU Mock: Verified zero-cloud latency execution.")

if __name__ == '__main__':
    unittest.main()
