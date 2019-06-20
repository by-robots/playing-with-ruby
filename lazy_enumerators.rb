# Generates a stream of integers.
def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

# If the all method didn't use a lazy enumerator this would loop forever because
# the select call would try to read all values from the enumerator in all, so it
# would never return. By making rhe numerator itself lazy, select will only use
# the values that it needs.
p Integer.all
         .select { |i| (i % 3).zero? }
         .first(10)
