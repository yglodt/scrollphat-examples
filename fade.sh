#!/usr/bin/env python3

import time
import scrollphat
from random import randrange

#x = lambda x, y : x + y

def hello(x, y):
	#print(str(x) + ", " + str(y))
	return True

b = 0
left = True

while True:
	try:
		#print(str(b))
		scrollphat.set_brightness(b)
		scrollphat.set_pixels(hello, True)
		time.sleep(0.05)

		if b == 10:
			left = False
		if b == 0:
			left = True

		if left == True:
			b += 1
		if left == False:
			b -= 1

	except KeyboardInterrupt:
        	scrollphat.clear()
	        sys.exit(-1)
