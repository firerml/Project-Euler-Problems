require 'rspec'
require 'benchmark'

# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

# Slow
def sum_of_mults1(limit)
  sum = 0;
  (1...limit).each do |n|
    if n % 3 == 0 || n % 5 == 0
      sum += n;
    end
  end
  sum
end

# Fast
def sum_of_mults2(limit)
  sum = 0;
  [3,5].each do |num|
    multiple = num;
    while multiple < limit do
      sum += multiple unless num == 5 && multiple % 3 == 0
      multiple += num
    end
  end
  sum
end

Benchmark.bmbm do |x|
  x.report('sum_of_mults1') { sum_of_mults1(10_000_000) }
  x.report('sum_of_mults2') { sum_of_mults2(10_000_000) }
end
