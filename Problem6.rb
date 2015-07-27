# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 100^2= 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sqr = 100
# method to calculate the sum of the square of the first sqr natural numbers
def sum_of_squares(num)
  x = 1
  sum = 0
  # add to the sum square of every number between 1 and srq
  while (x <= num)
    sum += x**2 
    x += 1
  end
  return sum
end

# method to calculate the square of the sum of the first sqr natural numbers
def square_of_sum(num)
  sum = 0
  x = 1
  # find the sum of all numbers from 1 to sqr, then calculate the square of the sum
  while(x <= num)
    sum += x
    x += 1
  end
  return sum**2
end

def diff(num1,num2)
  return num2 - num1
end

sum1 = sum_of_squares(sqr)
sum2 = square_of_sum(sqr)
difference = diff(sum1,sum2)

print "The sum of the squares of the first ", sqr, " natural numbers is: ", sum1, ".\n"
print "The square of the sum of the first ", sqr, " natural numbers is: ", sum2, ".\n"
print "The difference between the sum of the squares of the first ", sqr, " natural numbers and the square of the sum is: \n"
print sum2, " - ", sum1, " = ", difference

