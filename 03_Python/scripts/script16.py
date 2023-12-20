list = [9, 80, 16, 67, 35]
print("My list: " + str(list))

# go through loop with baked-in list size
"""for i in range(5):
    if i == 4:
        print(list[i] + list[0])
    else:
        print(list[i] + list[i+1])"""

# loop to go through list
for i in range(len(list)):
    # if i is equal to length of list (len(list) -1 because i starts at 0 instead of 1)
    if i == (len(list)-1):
        print(list[i] + list[0])
    else:
        print(list[i] + list[i+1])