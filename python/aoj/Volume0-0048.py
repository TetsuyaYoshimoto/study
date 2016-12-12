#encoding=utf-8

import sys
for line in sys.stdin:
    if float(line) <= 48.00: print "light fly"
    elif 48.0 < float(line) <= 51.0: print "fly"
    elif 51.0 < float(line) <= 54.0: print "bantam"
    elif 54.0 < float(line) <= 57.0: print "feather"
    elif 57.0 < float(line) <= 60.0: print "light"
    elif 60.0 < float(line) <= 64.0: print "light welter"
    elif 64.0 < float(line) <= 69.0: print "welter"
    elif 69.0 < float(line) <= 75.0: print "light middle"
    elif 75.0 < float(line) <= 81.0: print "middle"
    elif 81.0 < float(line) <= 91.0: print "light heavy"
    else:print "heavy"

