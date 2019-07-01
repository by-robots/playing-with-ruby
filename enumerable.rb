# Finds vowels in a string.
class VowelFinder
  include Enumerable

  def initialize(string)
    @string = string
  end

  # Scan through the string matching vowels. For each vowel found run the
  # supplied block.
  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end

vf = VowelFinder.new('the quick brown fox jumped')
p vf.inject(:+) # => euiooue

# Create a module, Summable, that will be used to sum the values of an Object
# that includes it.
module Summable
  def sum
    inject(:+)
  end
end

# Add it to Array...
class Array
  include Summable
end

# ...and Range...
class Range
  include Summable
end

# ...and our VowelFinder class.
class VowelFinder
  include Summable
end

p [1, 2, 3, 4, 5].sum # => 15
p ('a'..'m').sum # => abcdefghijklm

vf2 = VowelFinder.new('the quick brown fox jumped')
p vf2.sum # => euiooue
