#!/usr/bin/env python3

import sys
import time
#import psutil
import scrollphat
#import urllib.request
#import json

#mem = psutil.virtual_memory()

scrollphat.set_brightness(5)

#scrollphat.set_rotate(True)

#scrollphat.set_pixel(1, 1, True)
#scrollphat.update()
#time.sleep(2)

#scrollphat.set_pixels(lambda x, y: (x + y) % 2, True)
#scrollphat.update()

#scrollphat.set_col(3, True);
#scrollphat.update()

try:
	x = 0
	left = True
	while True:

		if x == 10:
			left = False
		if x == 0:
			left = True

		if left == True:
			x += 1

		if left == False:
			x -= 1

		scrollphat.clear_buffer()
		scrollphat.set_pixel(x, 1, True)
		scrollphat.set_pixel(x, 2, True)
		scrollphat.set_pixel(x, 3, True)
		#scrollphat.set_col(x, True)
		scrollphat.update()
		time.sleep(0.05)
except KeyboardInterrupt:
        scrollphat.clear()
        sys.exit(-1)


#for x in range(11):
#	scrollphat.clear_buffer()
#	scrollphat.set_pixel(x, 2, True)
#	scrollphat.update()
#	time.sleep(0.1)

#for x in range(9,0,-1):
#	scrollphat.clear_buffer()
#	scrollphat.set_pixel(x, 2, True)
#	scrollphat.update()
#	time.sleep(0.1)

scrollphat.clear()
