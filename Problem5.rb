# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

min = 0 # the smalles positive number that is evenily dibisible by all numbers
val = 20 # current number we are checking 
z = 20 # the highest divisor 

# Check if the current number is evenly divisible by all the number from 1 to y.
# It is enought to check values between y and y-(0.5y+1) to be sure that the rest also works since they are multimples, ex. 10*2=20, 9*2=18.
def is_divisible(num,y)
 if(num%y==0 && num%(y-1)==0 && num%(y-2)==0 && num%(y-3)==0 && num%(y-4)==0 && 
    num%(y-5)==0 && num%(y-6)==0 && num%(y-7)==0 && num%(y-8)==0 && num%(y-9)==0)
# if(num%(y)==0 && num%(y-1)==0 && num%(y-2)==0 && num%(y-3)==0 && num%(y-4)==0)
    return num
  else
    return 0
  end
end

# Factorial will help to not exceed the highest number of y!.
def factorial(x)
  if(x == 0)
    return 1
  else
    x = x * factorial(x-1)
    return x
  end
end

# When the current number is less than the factorial, check if it is the number we are looking for,
# otherwise move to the next number higher by z and check that number. Continue till we find the one we are looking for. 
while(val <= factorial(z))
 if(is_divisible(val,z) != 0)
    min = val
   break
  else
    val += z
  end
end

print "The smallest positive number that is evenly divisible by all of the numbers from 1 to ", z, " is ", min

