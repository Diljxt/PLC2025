# Function to generate a list of integers from a to b
def listFunc(a, b):
    return [i for i in range(a, b + 1)]  # Equivalent to Haskell's [a..b]

# Function to compute sum or average
def applicatorFunc(inpFunc, a, b, s):
    numbers = inpFunc(a, b)  # Generate list using inpFunc
    return sum(numbers) if s == 's' else sum(numbers) / len(numbers)  # Sum or Average

# Take user input
a = int(input("Enter the starting number (a): "))
b = int(input("Enter the ending number (b): "))
s = input("Enter 's' for sum or any other character for average: ")

# Call the function and print the result
result = applicatorFunc(listFunc, a, b, s)
print("Result =", result)
