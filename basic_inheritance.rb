# Define a parent class
class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello # Hello from #<Parent:0x00007fc24584fa58>

# Create a subclass of the parent
class Child < Parent
end

c = Child.new
c.say_hello # Hello from #<Child:0x00007fc24584f850>

# What about superclasses?
puts Child.superclass       # => Parent
puts Parent.superclass      # => Object
puts Object.superclass      # => BasicObject
puts BasicObject.superclass # => "nil"
