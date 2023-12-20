# Different types of variables
a = "int"
b = 7
c = False
d = "18.5"

# Print each variable type(), type converted to str to attach to rest of output string.
print("Variable a has type " + str(type(a)))
print("Variable b has type " + str(type(b)))
print("Variable c has type " + str(type(c)))
print("Variable d has type " + str(type(d)))

# d is set as a string, convert to float so it can be used in sum and print result
x = b + float(d)
print (x)