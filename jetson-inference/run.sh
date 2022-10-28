#!/bin/bash
cd jetson-inference
docker/run.sh --volume ~/jetson-inference/python/training/detection/ssd:/jeston-inference/python/training/detection/ssd/ --volume ~/jetson-inference:/jetson-inference/
