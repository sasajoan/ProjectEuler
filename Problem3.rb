# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime' 
val = 0 # quotient

def prime_factors(n)
  prime_array = []  #keep track off all prime factors  
  p = 2 
  if n < 2 
      return p
  end

# Divide the given number (n) by every smaller number between 2 and n-1 to find a val.
# Check if the quotient (val) is an integer and whether the divisor is prime.
# Add the prime number to the array, increment the divisor to the next number and return the array.
  while p < n
    val = n % p 
    if val == 0 && Prime.prime?(p)
      prime_array.push(p)
    end
  p += 1
  end
  return prime_array
end
####################################################################################################
# PRINT TO THE COLSOLE
x = 0
puts "Let's find pime factors of any number."
puts "Provide any positive integer: \n"
x = gets.chomp().to_i
print "Prime factors of ", x, " are: \n"
puts prime_factors(x)
#prime_factors(600851475143)

####################################################################################################