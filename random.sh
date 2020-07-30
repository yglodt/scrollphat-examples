#!/usr/bin/env python3

import time
import scrollphat
from random import randrange

while True:
	try:
		b = randrange(1,10)
		x1 = randrange(11)
		y1 = randrange(5)
		x2 = randrange(11)
		y2 = randrange(5)
		scrollphat.clear_buffer()
		scrollphat.set_brightness(b)
		scrollphat.set_pixel(x1, y1, True)
		scrollphat.set_pixel(x2, y2, True)
		scrollphat.update()
		time.sleep(0.05)
	except KeyboardInterrupt:
        	scrollphat.clear()
	        sys.exit(-1)
