"""
Collatz Conjecture
"""

x = int(input("Number: "))

steps = str(x)
stp = 0


def collatz(i):
    if i % 2:
        return 3*i+1
    else:
        return int(i/2)  # turns into int again to remove .0 after number (16.0 != 16)

while x != 1:
    x = collatz(x)
    stp += 1
    steps += ' -> ' + str(x)

print("Done in " + str(stp) + " steps.\n" + steps)
