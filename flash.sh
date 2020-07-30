#!/usr/bin/env python3

import time
import scrollphat
from random import randrange

while True:
	try:
		scrollphat.set_brightness(100)
		scrollphat.set_pixels(lambda x, y: (True), True)
		time.sleep(0.025)
		scrollphat.clear()
		time.sleep(0.5)

	except KeyboardInterrupt:
        	scrollphat.clear()
	        sys.exit(-1)
