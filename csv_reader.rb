require 'csv'
require_relative 'book_in_stock'

# Works with CSV data.
class CsvReader
  # Get the ball rolling.
  def initialize
    @books_in_stock = []
  end

  # Adds data from a CSV file.
  def read_in_csv_data(file_name)
    CSV.foreach(file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end

  # Calculates the total value of all of the books in stock.
  def total_value_in_stock # TODO: Use inject to sum a collection
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end

  # Lists how many of each book are ins tock by their ISBN number.
  def number_of_each_isbn
    #
  end
end
