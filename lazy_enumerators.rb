# Generates a stream of integers.
def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

# If the all method didn't use a lazy enumerator these would loop forever
# because the select call would try to read all values from the enumerator in
# all, so it would never return. By making the numerator itself lazy, select
# will only use the values that it needs.
multiple_of_three = ->(n) { (n % 3).zero? }
palindrome = ->(n) { n.to_s == n.to_s.reverse }

p Integer.all
  .select(&multiple_of_three)
  .select(&palindrome)
         .first(100)
