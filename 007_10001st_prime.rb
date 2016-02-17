#10001st Prime

#Problem 7 - https://projecteuler.net/problem=7

#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that
#the 6th prime is 13.

#What is the 10 001st prime number?

def largest_prime_series(num)
  prime_arr = [2,3]
  candidate = 5
  while prime_arr[num-1].nil?
    idx = 0
    while prime_arr[idx] <= Math.sqrt(candidate)
      break if candidate % prime_arr[idx] == 0
      idx +=1
    end
    prime_arr << candidate if candidate % prime_arr[idx] != 0
    candidate += 2
  end
  puts "The #{num}st prime number is #{prime_arr[num-1]}"
end

largest_prime_series(10001)

#=> 104743
#logic notes
#use of an array:
#1 - Used an array to store the prime series and call the array's index-1 to get the 10001st prime number.
#2 - Using an array makes it quick and easy to pull values since the elements (prime numbers) are indexed.
#3 - Debugging purposes. If there was a code change, and the value is incorrect,
#one can view the series and step through the loop to see where the logic breaks.

#while prime_arr[num-1].nil?
#The loop should continue until there is a value in the array that indicates the 100001st
#prime value. if  prime_arr[num-1].nil? is true, then all prime values have not been
#found yet.

#Math.sqrt()
#The sets the limit for how often the inner loop executes. Math.sqrt() is the limit
#for verifying if a number is prime since if the number is not NOT prime, it at
#least has two factors. If both factors are GREATER than the square root of a number,
#the factors would multiple to a bigger number than the original number.  Therefore,
#only 1 of the factors needs to be tested and thus needs to be less than the square
#root of a number.
