# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

a = 1
b = a + 1
$sum = 1000

# Check if the choice of three number satisfies the pythagorean triplet
def checkDef?(num1, num2, num3)
  if(num1**2 + num2**2 == num3**2 && num1+num2+num3==$sum)
    return true
  end
end

for a in (1..$sum/3) # since a is the smallest value
  for b in (a..$sum/2) # be has to be greater than a but < c
    for c in (b..$sum/2) # c must be between b abd 0.5sum
      if checkDef?(a,b,c)
       print"The triple for which a + b + c = ", $sum, " is: " 
       print a, ", ", b, ", and ", c, ".\n"
       print "The product of a*b*c = ", a*b*c, "."
      end
    end
  end
end

