#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

puts "Find the sum of all the multiples of 3 and 5 below 1000."

# x checks multiples of 3
x = 100
# y checks multiples of 5
y = 100
totalsum = 0 # sum of all multiples of 3 and 5

# for every number bettwen 100 and 2, check which are divisible by 3 and add to the sum
while x != 2
    if (x % 3 == 0)
      totalsum += x
      x -= 1
    else 
      x -= 1 
   end
end
# for every number bettwen 100 and 4, check which are divisible by 5 and add to the sum
while y != 4
  if (y % 5 == 0)
    totalsum += y
    y -= 1
  else
    y -= 1
  end
end

print "Total sum of all the murltiples of 3 and 5 is: ", totalsum
