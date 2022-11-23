# Assignment operator
print("Assignment operator")

x = 100
Data = x = 100

print("Data > x = 100 > ", Data)
print("x -= 3 > ", x - 3)
print("x += 3 > ", x + 3)
print("x *= 2 > ", x * 2)
print("x /= 2 > ", x / 2)
print("x %= 3 > ", x % 3)
print("x %= 2 > ", x % 2)
print("x //= 4 > ", x // 4)
print("x **= 10 > ", x ** 2)

# Arithmetic operator
print("Arithmetic operator")
x = 5
y = 5

print(x + y)
print(x - y)
print(x * y)
print(x / y)
print(x % y)
print(x ** y)
print(x // y)

# Comparison operator
print("Comparison operator")

x = 1
y = 1
z = 2

print(x > y)
print(x >= y)
print(x < y)
print(x <= y)
print(x > z)
print(x >= z)
print(x < z)
print(x <= z)
print(x == y)
print(x != z)

# Logical operator
print("Logical operator")

#and	Logical AND: True if both the operands are true	x and y
#or	Logical OR: True if either of the operands is true	x or y
#not	Logical NOT: True if operand is false	not x

a = 10
b = 12
c = 0

if a and b and c:
    print("All the numbers have boolean value as True")
else:
    print("Atleast one number has boolean value as False")

a = 10
b = 10
c = -10

if a > 0 and b > 0:
    print("The numbers are greater than 0")

if a > 0 and b > 0 and c > 0:
    print("The numbers are greater than 0")
else:
    print("Atleast one number is not greater than 0")

# Bitwise operator
print("Bitwise operator")
a = 10
b = 4
 
# &	Bitwise AND	x & y
# |	Bitwise OR	x | y
# ~	Bitwise NOT	~x
# ^	Bitwise XOR	x ^ y
# >>	Bitwise right shift	x>>
# <<	Bitwise left shift	x<<


# Print bitwise AND operation
print("a & b =", a & b)
 
# Print bitwise OR operation
print("a | b =", a | b)
 
# Print bitwise NOT operation
print("~a =", ~a)
 
# print bitwise XOR operation
print("a ^ b =", a ^ b)


