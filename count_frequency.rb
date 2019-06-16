# Takes an array of words and counts the number of times each word occurs.
def count_frequency(words)
  counts = Hash.new(0)
  words.each do |word|
    counts[word] += 1
  end

  counts
end
