# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
def test
  puts "sum of multiples below 10 is 23", multiples_3_5(10)
  puts "sum of multiples below 11 is 33", multiples_3_5(11)
  puts "sum of multiples below 12 is 33", multiples_3_5(12)
  puts "sum of multiples below 13 is 45", multiples_3_5(13)
end

def multiples_3_5(num)
  num -= 1
  sum_3_5 = 0
  num.times do
    if num % 5 == 0 || num % 3 == 0
      sum_3_5 += num
    end
      num -= 1
  end
  puts "The sum of numbers below #{num} is #{sum_3_5}"
end

multiples_3_5(1000)
