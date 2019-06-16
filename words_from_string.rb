# Returns the words in a string as an array.
def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end
