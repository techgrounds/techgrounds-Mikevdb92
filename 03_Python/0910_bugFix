# Bug Fix

## Code 1
### Faulty Code

    '''
    The output should be:
    hello Casper
    hello Floris
    hello Esther
    '''
    foo = 'hello'
    ls = ['Casper', 'Floris', 'Esther']
    for name in ls:
        print(loo,name)

### Fixed Code

    '''
    The output should be:
    hello Casper
    hello Floris
    hello Esther
    '''
    foo = 'hello'
    ls = ['Casper', 'Floris', 'Esther']
    for name in ls:
        print(foo,name)

*note: print(loo,name) changed to print(***foo***,name)*
*to print "hello" print() needs to get foo variable instead of loo variable*

## Code 2
### Faulty Code

    '''
    The output should be:
    100
    '''
    foo = 20
    bar = '80'
    print(foo + bar)

### Fixed Code

    '''
    The output should be:
    100
    '''
    foo = 20
    bar = 80
    print(foo + bar)

*note: bar = '80' changed to bar = ***80*** * 
*bar variable needs to have a int value, faulty code contained a string instead of interger (= "80" instead of = 80)*

## Code 3
### Faulty Code

    '''
    The output should be:
    30
    '''
    foo = 20
    for i in range(10):
        foo -= 1

    print(foo)

### Fixed Code

    '''
    The output should be:
    30
    '''
    foo = 20
    for i in range(10):
        foo += 1

    print(foo)

*note: changed foo -= 1 to foo += 1*
*foo starts at 20, to get to 30 the for loop should ***add*** 1 every loop instead of reduce by 1*

## Code 4
### Faulty Code

    '''
    The output should be:
    there are 0 kids on the street
    there are 1 kids on the street
    there are 2 kids on the street
    there are 3 kids on the street
    there are 4 kids on the street
    '''
    foo = 0
    while foo <= 5:
        print('there are', foo, 'kids on the street')
        foo += 1

### Fixed Code
Solution 1:

    '''
    The output should be:
    there are 0 kids on the street
    there are 1 kids on the street
    there are 2 kids on the street
    there are 3 kids on the street
    there are 4 kids on the street
    '''
    foo = 0
    while foo <= 4:
        print('there are', foo, 'kids on the street')
        foo += 1

*note changed while foo <=5: to while foo <=4:*
*<= means smaller or equal too.. you want to show up to 4 kids on the street, by changing the 5 into a 4 the count stopts when foo is equal to 4.*

Solution 2:
    '''
    The output should be:
    there are 0 kids on the street
    there are 1 kids on the street
    there are 2 kids on the street
    there are 3 kids on the street
    there are 4 kids on the street
    '''
    foo = 0
    while foo < 5:
        print('there are', foo, 'kids on the street')
        foo += 1

*chaned while foo <= 5: to while foo < 5:*
*when foo increases to 5 it won't be smaller than 5 so the while loop will be completed with the last output being 4 kids on the street*

## Code 5
### Faulty Code

    '''
    The output should be:
    Star Wars
    '''
    ls = ['Lord of the rings', 'Star Trek', 'Iron Man', 'Star Wars']
    print(ls[4])

### Fixed Code

    '''
    The output should be:
    Star Wars
    '''
    ls = ['Lord of the rings', 'Star Trek', 'Iron Man', 'Star Wars']
    print(ls[3])

*note: changed print(ls[4]) to print(ls[3])*
*computers start counting at 0 instead of 1, so if you want the 4th option out of a list it would be nr [3] instead of [4] which translates to position 5 of a list*

## Code 6
### Faulty Code

    '''
    The output should be:
    80
    '''
    foo = 80
    if foo < 30:
        print(foo)
    else:
        print('big number wow')
    elif foo < 100:
        print(foo)

### Fixed Code

    '''
    The output should be:
    80
    '''
    foo = 80
    if foo < 30:
        print(foo)
    elif foo < 100:
        print(foo)
    else:
        print('big number wow')

*note: moved elif statement infront of else statement*
*an if-else statement follows the if - elif - elif - ... - else structure. if these are mixed the statement will end without reaching the elif statements*


## Code 7
### Faulty Code

    '''
    The output should be:
    ['Dog', 'Cat', 'Fly']
    '''
    ln = ['Dog', 'Cat', 'Elephant', 'Fly', 'Horse']
    short_names = []

    for animal in ln:
        if len(animal) == 3:
            short_names.append(animal)
        short_names = []

    print(short_names)

### Fixed Code

    '''
    The output should be:
    ['Dog', 'Cat', 'Fly']
    '''
    ln = ['Dog', 'Cat', 'Elephant', 'Fly', 'Horse']
    short_names = []

    for animal in ln:
        if len(animal) == 3:
            short_names.append(animal)

    print(short_names)

*note deleted shorter_names =[] in the for loop*
*the second shorter_names = [] will overwrite earlier changes to that list, which in this case empties out the list*

## Code 8
### Faulty Code

    '''
    The output should be:
    20
    '''
    foo = 10
    bar = 2
    print(foo**bar)

### Fixed Code

    '''
    The output should be:
    20
    '''
    foo = 10
    bar = 2
    print(foo*bar)

*note: changed print(foo\*\*bar) into print(foo\*bar)*
*to multiply a number you need to use \* instead, \*\* has a different function*

## Code 9
### Faulty Code

    '''
    The output should be:
    0
    1
    2
    3
    4
    8
    9
    '''
    for i in range(10):
        if i < 5:
            print(i)
        elif i < 8:
            break
        else:
            print(i)

### Fixed Code

'''
The output should be:
0
1
2
3
4
8
9
'''
for i in range(10):
	if i < 5:
		print(i)
	elif i >= 8:
		print(i)
	else:
		pass

*note changed elif i < 8 into i >= 8, also break to print(i) in the elif part, else: print(i) changed to else: pass*
*the elif statement has to print numbers 8 and 9, >= means bigger or equal to, which prints with print(i) the numbers that pass the statement*
*else changed to pass so it won't print numbers when the if/elif statements are false*

## Code 10
### Faulty Code

    '''
    The output should be:
    the number is 20
    '''
    print('the number is' + 20)

### Fixed Code

    '''
    The output should be:
    the number is 20
    '''
    print('the number is ' + str(20))

*note: changed 20 to str(20) and added a space after is in the print statement*
*print function can only print strings, 20 is an interger so had to be converted to a string with str()*

## Code 11
### Faulty Code

    '''
    The output should be:
    IT LIVES!
    '''
    dev monster():
        print('IT LIVES!')

    monster()

### Fixed Code

    '''
    The output should be:
    IT LIVES!
    '''
    def monster():
        print('IT LIVES!')

    monster()

*note: changed dev to def*
*to ***def***ine a function you need to use def instead of dev*


## Code 12
### Faulty Code
    '''
    The output should be:
    4
    16129
    '''
    def square(x):
        return x**2

    nr = square(2)
    print(nr)

    big = square(foo)
    print(big)

    foo = 127

### Fixed Code
    foo = 127
    def square(x):
        return x**2

    nr = square(2)
    print(nr)

    big = square(foo)
    print(big)

*note: moved foo = 127 to the top*
*variable foo needs to be defined first to be used in further code.*

## Code  13
### Faulty Code
    '''
    The output should be:
    Your random number is: <insert random number here>
    '''
    import random

    random.randint(1,100)
    print("Your random number is:")

### Fixed Code
    '''
    The output should be:
    Your random number is: <insert random number here>
    '''
    import random

    print("Your random number is: " + str(random.randint(1,100)))

*note: moved randomiser into the print statement*
*faulty code did use a randomiser but never used the result of it. by moving it into the print statement the result is printed into the terminal*

## Code 14
### Faulty Code

    '''
    The output should be:
    True
    '''
    def rtn(x):
        return(x)

    foo = rtn(3)

    if foo > rtn(4):
        print(True)
    else:
        print(False)

### Fixed Code
'''
The output should be:
True
'''
def rtn(x):
	return(x)

foo = rtn(3)

if foo < rtn(4):
	print(True)
else:
	print(False)

*note: changed if foo > rtn(4): to if foo < rtn(4)*
*output should show true if foo is bigger than rtn instead of smaller*

## Code 15
### Faulty Code
    '''
    The output should be:
    a5|||5|||5|||a5|||5|||5|||a5|||5|||5|||
    '''
    foo = ''
    for i in range(3):
        foo += 'a'
        for j in range(3):
            foo += '5'
        for k in range(3):
            foo += '|'

    print(foo)

### Fixed Code

    '''
    The output should be:
    a5|||5|||5|||a5|||5|||5|||a5|||5|||5|||
    '''
    foo = ''
    for i in range(3):
        foo += 'a'
        for m in range(3):
            for j in range(1):
                foo += '5'
            for k in range(3):
                foo += '|'

    print(foo)

*note: added for m in range(3): loop*
*the loops makes sure the 5||| part gets repeated 3 times before going back to the for i loop (main loop)*

