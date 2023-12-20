number = 0
while number != 100:
    number = input("Give me your favorite number, please.\n")

    if int(number) < 100:
        print("It seems you like your numbers on the small side\n")

    elif int(number) > 100:
        print("Ah, we got a big number lover over here!\n")
    else:
        print("Secret code ACTIVATED.... Preparing rocket for launch!")
        exit()
