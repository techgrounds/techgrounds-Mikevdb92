# Variables

## Introduction
A variable can store a value. This value can then be accessed with the variable name in the code. This is useful if you want to use one value multiple times, or if you want to dynamically change the value.

A variable name can be any string of characters (except for some special cases that are reserved for other use). It is a best practice to use variable names that are short, but also clear. For example, a variable that stores user input might be named input or usr_inpt.


Remember that at any time in the code, you can put a print statement to read the current value of a variable. This is useful when trying to find a bug in a script.

## Exercise 1
- Create a new script.
- Create two variables x and y. Assign a numerical value to both variables.
- Print the values of x and y.
- Create a third variable named z. The value of z should be the sum of x and y.
- Print the value of z.

### Code
    x = 5
    y = 10
    z = x + y
    print( z )

*script2.py*

### Output
![z = x + y](../00_includes/0902_exercise1.png)
## Exercise 2
- Create a new script.
- Create a variable called name. The value of name should be your name.
- Print the text “Hello, YOURNAME!”. Use the variable name in the print statement. 

### Code
    name = "Mike"
    print( "Hello " + name + "!")

*script3.py*

### Output
![hellome](../00_includes/0902_exercise2.png)


## Exercise 3
- Create a new script.
- Create a variable and assign a value to it.
- Print the text “Value 1: VALUE1”.
- Change the value of that same variable.
- Print the text “Value 2: VALUE2”.
- Change the value of that same variable.
- Print the text “Value 3: VALUE3”.

### Code
    value1 = "Mike"
    value2 = "92"
    value3 = "Beep"

    print( "Value 1: "+ value1 + "\nValue 2: " + value2 + "\nValue 3: " + value3)

*script4.py*

### Output
![Values](../00_includes/0902_exercise3.png)