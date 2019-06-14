# Straight forward variables.
person = 'Dan'
puts "The object in `person` is a #{person.class}."
puts "The object has an ID of #{person.object_id}."
puts "The object has a value of #{person}."

# Now let's try references.
person2 = person
person[0] = 'V'

puts "Person is #{person}. Person2 is #{person2}."

# So, let's use {string}.dup to create a distinct copy of an object.
person3 = person.dup
person[0] = 'D'

puts "Person is #{person}. Person3 is #{person3}."
