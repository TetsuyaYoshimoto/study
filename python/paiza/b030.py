#encoding=utf-8

def put():
	fe,idou = [],[]
	x,y = map(int , raw_input().split())
	for i in xrange(y):
		inp = raw_input()
		fe.append(inp)
	x_now,y_now = map(int,raw_input().split())
	z = input()
	for i in xrange(z):
		inp = raw_input()
		idou.append(inp)
	x_now,y_now =x_now-1,y_now - 1
	now = [x_now,y_now]
	return ido(fe,now,idou)


def ido(fe,now,idou):
    x,y = now[0],now[1]
    for i in xrange(len(idou)):
#        print fe[x][y]
        if idou[i] == "U":
            x,y = up(x,y,fe) 
        elif idou[i] == "R":
            x,y = ri(x,y,fe)
        elif idou[i] == "D":
            x,y = down(x,y,fe)
        elif idou[i] == "L":
            x,y = le(x,y,fe)
    return x,y

def up(x,y,fe):
    
    x, y = x, y - 1
#    print "UP" + "(x,y)" + str(x) + "," + str(y) + " \t   Ocation : " + fe[x][y]
    if y == 0:
        return ri(x,y,fe)
    else:
        if fe[x][y] == ".":
            return x,y
        elif fe[x][y] == "#":
            return up(x,y,fe)
    

def ri(x,y,fe):
    x, y = x + 1, y
#    print "RIGHT" + "(x,y)" + str(x) + "," + str(y) + " \tOcation : " + fe[x][y]
    if x == len(fe[0]) - 1:
        return down(x,y,fe)
    else:
        if fe[x][y] == ".":
            return x,y
        elif fe[x][y] == "#":
            return ri(x,y,fe)


def down(x,y,fe):
#    print "DOWN" + "(x,y)" + str(x) + "," + str(y) + " \tOcation : " + fe[x][y]
    x, y = x, y + 1
    if y == len(fe):
        return le(x,y,fe)
    else:
        if fe[x][y] == ".":
            return x,y
        elif fe[x][y] == "#":
            return down(x,y,fe)

		
def le(x,y,fe):
#    print "LEFT" + "(x,y)" + str(x) + "," + str(y) + " \tOcation : " + fe[x][y]
    x, y = x - 1, y
    if x == 0:
        return up(x,y,fe)
    else:
        if fe[x][y] == ".":
            return x,y
        elif fe[x][y] == "#":
            return le(x,y,fe)



if __name__ == "__main__":
	x,y = put()
	print x,y
	
