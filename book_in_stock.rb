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
