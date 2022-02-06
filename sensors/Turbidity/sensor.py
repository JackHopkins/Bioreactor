import serial
#Serial takes two parameters: serial device and baudrate
ser = serial.Serial('/dev/ttyACM1', 9600)

data = ser.readline()

print(data)