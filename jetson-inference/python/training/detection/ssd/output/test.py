import jetson.inference
import jetson.utils

net=jetson.inference.detectNet("ssd-mobilenet-v2", threshold=0.5)
camera=jetson.utils.videoSource("/dev/video0")
display=jetson.utils.videoOutput("test.jpg")


while display.IsStreaming():
	img=camera.Capture()
	detections = net.Detect(img)
	display.Render(img)
