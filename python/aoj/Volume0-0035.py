	    
for i in sys.stdin:
	xa,ya,xb,yb,xc,yc,xd,yd = map(float, i.split(","))	
	print hantei(xa,ya,xb,yb,xc,yc,xd,yd)

def S(x1,y1,x2,y2,x3,y3):
    return ((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1))/2.0
    import sys
    for dataset in sys.stdin:
        xa,ya,xb,yb,xc,yc,xd,yd=map(float,dataset.split(","))
        ABC=S(xa,ya,xb,yb,xc,yc)
        BCD=S(xb,yb,xc,yc,xd,yd)
        CDA=S(xc,yc,xd,yd,xa,ya)
        DAB=S(xd,yd,xa,ya,xb,yb)
        if ABC>0 and BCD>0 and CDA>0 and DAB>0:
            print "YES"
        elif ABC<0 and BCD<0 and CDA<0 and DAB<0:
            print "YES"
        else:
            print "NO"

