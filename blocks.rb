def call_block
  puts "hello"
  yield
  yield
  puts "How are you?"
end

call_block { puts "Dan" }
