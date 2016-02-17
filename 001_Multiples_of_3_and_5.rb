#Multiples of 3 and 5

#Problem 1 - https://projecteuler.net/problem=1

# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

def multiples_3_5(num)
  original = num
  num -= 1
  sum_3_5 = 0
  num.times do
    if num % 5 == 0 || num % 3 == 0
      sum_3_5 += num
    end
      num -= 1
  end
  puts "The sum of numbers below #{original} and are multiples of 3 and 5 is #{sum_3_5}"
end

multiples_3_5(1000)

#To find the sum of all multiples of 3 OR 5 below a given number, the function must check
# if a) the number testing is evenly divisible by 3 or 5. b) if so, then that value
#should be incremented into a sum variable that will hold the sums of the numbers that
#meet condition a.
