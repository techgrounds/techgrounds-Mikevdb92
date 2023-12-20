# while True loop: counts from 0 to 10
x = 0

while True:
    if x > 10:   
        break

    print(x)
    x += 1
    
    if x > 10:
        print("All done Sir!")
        exit()

# for in range() loop: repeat loop until range is reached (x is set to 0 by python)
# Note: this loop won't run atm because the exit() in the while loop!
for y in range(11):
    y <= 10    
    print(y)

    y > 10
    print("All done Sir!")