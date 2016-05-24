# book application

require 'erb'
require 'sinatra'
require 'sinatra/reloader' if development?

# def get_description() #method that returns an array of strings
#   ['this is a cool book', 'it\'s really cool', 'eggs', 'very nice']
# end

def get_template(file) #this is our template, defined as a single string
  s = ""
  File.open(file) do |f|
    f.each_line do |line|
      s.concat(line)
    end
  end
  s
end

class Book
  include ERB::Util
  attr_accessor :template, :title, :isbn, :author, :price, :description

  def initialize(template, title, isbn, author, price)
    @template = template
    @title = title
    @isbn = isbn
    @author = author
    @price = price
    @description = []
  end

  def add_description(desc)
    @description << desc
  end

  def get_binding
    binding()
  end
end

#create instance of book with descriptions
book = Book.new(get_template(ARGV[0]), "Harry Potter 1", "1341-13413413-22", "J. K. Rowling", "50")
book.add_description("this is a great book")
book.add_description("it's fun")
book.add_description("really fun")

#render
renderer = ERB.new(book.template)

#route handler
get '/book' do
  renderer.result(book.get_binding)
end
