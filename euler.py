import sys
import math as m

# expression = -(1/2)*(y-72)

yZero = 140


def main():
    xGoal = float(sys.argv[1])
    h = float(sys.argv[2])

    print("Euler: " + str(round(euler(yZero, xGoal, h), 3)))
    print("Analiticamente: " + str(round(realValue(float(sys.argv[1])), 3)))


def yDiff(x, y):
    return (-1/2)*(y - 72)


# @pre h > 0
def euler(yZero, xGoal, h):
    x = 0
    y = yZero
    while not x > xGoal:
        y += h*yDiff(x, y)
        x += h
    return y

def realValue(x):
    return 72 + 68*m.exp(-x/2)

main()
