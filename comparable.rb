class Person
  include Comparable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def <=>(other)
    name <=> other.name
  end
end

dan = Person.new('Dan')
dolores = Person.new('Dolores')
arnold = Person.new('Arnold')

# Compare two names and find out who is greater.
p "#{dolores.name}'s name > #{arnold.name}'s name." if dolores > arnold

# Sort the names.
p 'Sorted list:'
p [dan, dolores, arnold].sort
