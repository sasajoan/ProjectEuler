# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'
maxPrime = 2000000 # the treshold for prime number
array = Array.new #array of primes below the treshold

# Use the Prime class to read each prime between 1 and maxPrime and set them to our array
array = Prime.take_while {|p| p < maxPrime } 
# Find the sum of the array by a block of sum and every element in the array, x.
sumAll = array.inject{|sum,x| sum + x }
print "The sum of all primes below ", maxPrime, " is ", sumAll

