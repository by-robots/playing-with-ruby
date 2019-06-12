def call_block
  puts "hello"
  yield('Bruce')
  yield('Wayne')
  puts "How are you?"
end

call_block {|name| puts name }
