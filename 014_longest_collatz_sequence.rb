# Longest Collatz sequence
# Problem 14
# https://projecteuler.net/problem=14

# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def longest_collatz_sequence(count)
  result = {}
  while count >= 1
    n = count
    seq = [count]
    while n > 1
      n.even? ? n = n/2 : n = (3*n) + 1
      seq << n
    end
    count -= 1
    value = seq_compare(seq,result)
  end
  puts "The number that produces the largest chain is: #{value[value.keys[0]][0]}"
end

def seq_compare(seq,res)
  res[seq.length] = seq
  if res.length == 2
    res.keys[0] > res.keys[1] ? res.delete(res.keys[1]) : res.delete(res.keys[0])
  end
  res
end

longest_collatz_sequence 1000000
