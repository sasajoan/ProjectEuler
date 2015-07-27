# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'prime'
num = 2 # starting number
last =  10001 # last number
count = 1 # keep count as to at which prime we are looking at
prime = 0 # our final prime number
x = 0 # the divisor of each number

# Check every number between first number (num) and last number (last)
# Let's assume that the numer is prime and set the divisor to two.
while(count <= last)
  prime_flag = true
  x = 2
# While divisor is less then a half of the num check if there is a reminder.
# If a quotient is an integer, our prime fralg is false, else we leave the if and increment to the next divisor.
  while(x <= num / 2)
    if(num % x == 0)
      prime_flag = false
      break
    end
    x += 1
  end
# Next step is to check the status of the flag. If it is true, we have a prime, thus we increment the count
# and set the number to be our largerst prime.
  if(prime_flag)
   count += 1
   prime = num
  end
# Lastly, we are moving to the next number
 num += 1
end

print "The ", last, " prime number is: ", prime
