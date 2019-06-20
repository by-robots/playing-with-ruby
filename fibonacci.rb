# frozen_string_literal: true

# An enumerator to find the next number in the Fibonacci sequence.
fibonacci = Enumerator.new do |yielder|
  numbers = []

  loop do
    # Ruby's equivalant to a switch statement. For the first two passes we'll
    # need to add the first numbers in the sequence manually. Subsequent
    # passes will sum the last two numbers in the sequence.
    case numbers.length
    when 0
      numbers.push(0)
    when 1
      numbers.push(1)
    else
      numbers.push(numbers[-1] + numbers[-2])
    end

    # Yield to the provided block.
    yielder.yield numbers[-1]
  end
end

25.times do
  print fibonacci.next, ' '
end

puts
