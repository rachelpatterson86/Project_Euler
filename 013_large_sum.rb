# Large sum
# Problem 13

# Work out the first ten digits of the sum of the following one-hundred 50-digit
# numbers.

def get_sum_text
num_list = 0
  File.open('013_large_sum.txt','r') do |f|
    f.each_line do |l|
      num_list += l.to_i
    end
  end
  num_list
end

def first_ten(sum)
  result = sum.to_s.slice(0,10)
end

def large_sum
  first_ten(get_sum_text)
end
#result is 5537376230

large_sum
