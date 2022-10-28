#!/bin/bash
cd python/training/detection/ssd
python3 detectnet.py --model=models/RAD/ssd-mobilenet.onnx --labels=models/RAD/labels.txt --input-blob=input_0 --output-cvg=scores --output-bbox=boxes /dev/video0 --headless --threshold=0.5
