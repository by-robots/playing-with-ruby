require_relative 'count_frequency'
require_relative 'words_from_string'

raw_text = %{The problem breaks down into two parts. First, given some text as a
  string, return a list of words. That sounds like an array. Then, build a count
  for each distinct word. That sounds like a use for a hash---we can index it
    with the word and use the corresponding entry to keep a count.}

# Get counts for each word.
word_list = words_from_string(raw_text)
counts    = count_frequency(word_list)
sorted    = counts.sort_by { |word, count| count }

# Get the top 5 words used.
top_five  = sorted.last(5)

# Output.
top_five.each do |count, word|
  puts "#{word}: #{count}"
end
