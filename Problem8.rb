# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

$num = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
max = 0 # the greatest product
last = 13 # last, the 13th digit ----> ********* YOU CAN ACTUALLY CHOOSE ANY NUMBER YOU WANT **************
difference = last - 1 # difference between first and last
constant = 1 # incrementing to the next set of 13 digits
x = 1 # current digit
a = 0 # a digit repesentation from the number
sum = 1 # highest product
curr = 0  # used to print from the array

arrayDigit = Array.new # arrray of 13 adjecent digits of the highest product

# find the adjecent digits which produce the highest product
# while y is the last of 13 digits we are focusing on
def find_digit(y)
  digit = $num[y-1, 1].to_i
  return digit
end
# Go through the 100 digit number and check a product of 13 adjecent digits and check.
# Check which product is the highest and save the digit's position number.
while(last <= $num.length)
 a = 0
 # check the product of four digits
  while(x <= last)
    temp = $num[x-1,1]
    sum = sum * temp.to_i
    x += 1  
  end
  #check if the product is the highest and save the last digit position, final 
    if(sum >= max)
      max = sum
      final = x - 1
    end
  sum = 1
  # start again from second position digit of the previus 13
  x = last - 2
  last += constant
end
  
 a = final - difference 
 #add the 13 adjecent digits to the array
   while(a <= final)
        arrayDigit.push find_digit(a)
        a += 1
     end

print "The greates product of ", difference + 1," adjecent digits: "
#print the adjecent digits
while(arrayDigit.length-1 >= curr)
  print arrayDigit[curr]
  curr += 1 
  print ", "
end
print "in the 1000-digit number is ", max, ".\n"








