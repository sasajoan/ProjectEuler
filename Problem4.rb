# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

x = 10000 # the smallest 3 digit number
y = 99999 # the largest 3 digit number
pal = 0 # product of x and y
mult1 = 0 # multiplicand of a palindrome
mult2 = 0 # multiplier of a palindrome
max = 0 # the larges palindrome

# method to check if a number is a palindrome
# by comparing the number as a string and its reverse
def is_palindrome?(n)
    n.to_s == n.to_s.reverse
end

# multiply each possible pair of numbers between x and y
# Check if the produt is a palindrome and if it is greater than the precius palindrome,
# and if so, set it as a new palindromer and afe the muliplier and multiplicant
# Then increment to the next pair to next factors
while (x <= y)
  pal = x * y 
 if (is_palindrome?(pal) && val > max)
   max = pal
   mult1 = x
   mult2 = y
 end
 x += 1
end

print "The largest palindrome made of a product of 2 three digit numbers is: \n", max, "\n"
print "A product of ", mult1, " and ", mult2


