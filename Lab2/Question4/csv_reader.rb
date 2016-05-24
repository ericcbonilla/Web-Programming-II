#Eric Bonilla
#COEN 164 Lab 2
#4-14-16

require 'csv'
require_relative 'book_in_stock'

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    # “headers: true” means the csv file has header
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end

  def total_value_in_stock
    # add code here to calculate total value of all books in stock

    @total_value = 0.0
    x = 0
    while x < @books_in_stock.length
      @total_value=@total_value+@books_in_stock[x].price.to_f
      x+=1
    end
    
    @total_value
  end
end

# CSV1 = CsvReader.new()
