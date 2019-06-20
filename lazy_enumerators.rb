# Generates a stream of integers.
def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

# Is the given value a palindrome?
def palindrome?(value)
  value = value.to_s
  value == value.reverse
end

# If the all method didn't use a lazy enumerator these would loop forever
# because the select call would try to read all values from the enumerator in
# all, so it would never return. By making the numerator itself lazy, select
# will only use the values that it needs.
multiple_of_three = Integer.all.select { |i| (i % 3).zero? }
p multiple_of_three.first(10)

m3_palindromes = multiple_of_three.select { |i| palindrome?(i) }
p m3_palindromes.first(10)
