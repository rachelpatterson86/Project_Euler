# Smallest multiple https://projecteuler.net/problem=5
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder. # What is the smallest positive number that is
# evenly divisible by all of the numbers from 1 to 20?

#Thought process:
# 1. We need the smallest start point to determine if all numbers from 1..20 are
#    factors of a the smallest composit number. At the very least, the start
#    point should be at least factors of the greatest integers. In this case,
#    20 and 19, hence candidate =  num * (num-1)
# 2. For each of the numbers between 2..20, loop through to determine
#    divisibility.  If there is a number that is not divisible by candidate,
#    then candidate will increment by num*(num-1) and that new value should be
#    tested against all of the numbers between 2..20. 1 is excluded because all
#    numbers are divisible by 1.

#brute force... slow. No use of primes to speed up efficiency.
#http://stackoverflow.com/questions/19348430/project-euler-getting-smallest-multiple-in-python
def smallest_multiple(num)
  ans = 0
  multiple_arr = (2..num).to_a
  candidate = num * (num-1)
  while ans == 0
    multiple_arr.each do |i|
      break if candidate % i != 0
      if  candidate % i == 0
        if i == num
          ans = candidate
          break
        else
          next
        end
      end
    end
    candidate += num * (num-1) #wrong: multiple += multiple
  end
  return ans
end

smallest_multiple 20
