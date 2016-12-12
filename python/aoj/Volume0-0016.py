import turtle
k = turtle.Turtle()
k.speed(0)
k.left(90)
while True:
    x = map(int,raw_input().split(","))
    if x[0] == 0 and x[1] == 0:
        break
    else:
        k.fd(x[0])
        k.right(x[1])
        continue
print int(k.xcor())
print int(k.ycor())
