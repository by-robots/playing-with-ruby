# A module for subsequent classes to mixin.
module Debug
  def who_am_i?
    "#{self.class.name} (id: #{object_id}): #{name}"
  end
end

# Real old-school.
class Phonograph
  include Debug

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# Less old-school, but still old school.
class EightTrack
  include Debug

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# Test out mixins - create an instance of each class and use one of the module
# methods to question the nature of our reality.
ph = Phonograph.new('Sonne')
et = EightTrack.new('Origin of Symmetry')

p ph.who_am_i?
p et.who_am_i?
