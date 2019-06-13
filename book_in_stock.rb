# Represents a book that's in stock in our pretend book shop.
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  # Initialize a book.
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  # Override to_s to output the contents of the class instance.
  def to_s
    "ISBN: #{@isbn}; Price: #{@price}."
  end

  # Get the book's price in pence.
  def price_in_pence
    Integer(price*100 + 0.5)
  end

  # Allow the book's price to be set in pence.
  def price_in_pence=(pence)
    @price = pence / 100.0
  end
end

# Create some instances and see what's inside.
b1 = BookInStock.new('isbn1', 3)
puts "Book 1's ISBN is #{b1.isbn}."
puts "Book 1's price is #{b1.price}."
puts "Book 1's price in pence is #{b1.price_in_pence}."

b2 = BookInStock.new('isbn2', 3.13)
puts "Book 2's ISBN is #{b2.isbn}."
puts "Book 2's price is #{b2.price}."

# Reset Book 2's price by supplying a number of pence.
b2.price_in_pence = 450
puts "Book 2's new price is #{b2.price}."

b3 = BookInStock.new('isbn3', '5.67')
puts "Book 3's ISBN is #{b3.isbn}."
puts "Book 3's price is #{b3.price}."

# Apply a discount to Book 3 to test out writable attributes.
b3.price = b3.price * 0.75
puts "Book 3's discounted price is #{b3.price}, which is #{b3.price_in_pence} pence."
