# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

#thought process:
# 1. break out the problem into 3 distinct functions. 1 - get the sum of each square within a range. 2 - get the sum of a range then get the square of that sum. 3 - find the difference between the two values.
#2. sum_sq and sq_sum, put the range up to num in an arr and loop it. For sum_sq, get the square of i then store the value in sum. sum will then increment by i**2. For sq_sum, sum would increment by i. After the loop has been completed, squre sum to get the value.
#3. sum_sq_diff get the difference of the values from sq_sum and sum_sq. This function provides the answer to the problem.
#4. All of this could be combined into 1 function, but for readability and simplicity, I think it's best to separate the code into 3 functions where each function only does 1 task.

def sum_sq(num)
  num_arr = (1..num).to_a
  sum = 0
  num_arr.each do |i|
    sum += i ** 2
  end
  sum
end

def sq_sum(num)
  num_arr = (1..num).to_a
  sum = 0
  sq_sum_val = 0
  num_arr.each do |i|
    sum += i
  end
  sq_sum_val = sum ** 2
end

def sum_sq_diff(val1,val2)
  diff = val1-val2
end

sum_sq_diff(sq_sum(100),sum_sq(100))
