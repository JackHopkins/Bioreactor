pumps = [4, 6, 22, 26] #GPIO pin to connect to relay
# 26, 6, 4, 
import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)

for pump in pumps:
    GPIO.setup(pump, GPIO.OUT)
    
while True:
    for pump in pumps:
        GPIO.output(pump, True)    
        time.sleep(2)
        GPIO.output(pump, False)
        time.sleep(2)