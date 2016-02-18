#Summation of primes

#Problem 10 - https://projecteuler.net/problem=10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

#prime numbers are diviisble by only 1 and itself

def sum_prime(num)
  sum_prime = 0
  prime_list = sieves_primes(num)
  prime_list.each do |p|
    sum_prime += p
  end
  puts "The sum of prime numbers below #{num} is #{sum_prime}"
end

def sieves_primes(num)
  list = [2] + (3..num).step(2).to_a
  idx = 1
  while list[idx] <= Math.sqrt(num)
    (list[idx]**2).step(num,(2*list[idx])) do |candidate|
      list.delete(candidate) if candidate % list[idx] == 0
    end
    idx += 1
  end
  list
end

sum_prime(2000000)

#Notes: The script does 2 things. 1) finds all prime numbers less than num
#(sieves_primes). 2) Sums up all the prime numbers found in (sieves_primes).

#refactoring probably needed. It takes forever to run if the num is 2million.

# #perhaps it would be best to start summing up values in sieves_primes once
#it's determined #that a |candidate| is prime. This way, for the numbers that
#are not directly #tested (list[idx]) but are determined as prime can be split
#into it's own smaller array. As a result, sum_prime would have less elements
#to loop over. I didn't think that 2 million would be so slow. I opted not to
#do this more efficient way because the above code is way more readable and
#straight forward.
