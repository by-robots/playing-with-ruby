# frozen_string_literal: true

# Step through and calculate the next triangle number in a sequence, then yield
# to the provided block.
triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count  = 1

  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

# Loop through x number of times and print out the next triangle number in the
# sequence.
100.times do
  print triangular_numbers.next, ' '
end

puts # New line
