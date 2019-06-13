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

  # Accessor methods.
  def isbn
    @isbn
  end

  def price
    @price
  end
end

# Create some instances and see what's inside.
b1 = BookInStock.new('isbn1', 3)
puts "Book 1's ISBN is #{b1.isbn}."
puts "Book 1's price is #{b1.price}."

b2 = BookInStock.new('isbn2', 3.13)
puts "Book 2's ISBN is #{b2.isbn}."
puts "Book 2's price is #{b2.price}."

b3 = BookInStock.new('isbn3', '5.67')
puts "Book 3's ISBN is #{b3.isbn}."
puts "Book 3's price is #{b3.price}."
