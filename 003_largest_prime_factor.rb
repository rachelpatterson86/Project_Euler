#Largest Prime Factor

#Problem 3 - https://projecteuler.net/problem=3

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143?

def largest_prime_factor(num,prime_factors,recursive)
  candidate = 2
  until candidate >= Math.sqrt(num)
    recursive = false
    if num % candidate == 0
      num = num / candidate
      recursive = true
      prime_factors << candidate
      largest_prime_factor(num,prime_factors,recursive)
    end
    break if recursive
    candidate == 2 ? candidate += 1 : candidate += 2
  end
  prime_factors << num unless recursive
  prime_factors.last
end
