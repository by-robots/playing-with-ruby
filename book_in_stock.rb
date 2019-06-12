# Represents a book that's in stock in our pretend book shop.
class BookInStock
  # Initialize a book.
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  # Override to_s to output the contents of the class instance.
  def to_s
    "ISBN: #{@isbn}; Price: #{@price}."
  end
end

# Create some instances and see what's inside.
b1 = BookInStock.new('isbn1', 3)
puts b1

b2 = BookInStock.new('isbn2', 3.13)
puts b2

b3 = BookInStock.new('isbn3', '5.67')
puts b3
