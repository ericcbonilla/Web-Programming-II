#using a template system with ERB

require 'erb'
# require 'sinatra'

def get_items() #method that returns an array of strings
  ['bread', 'milk', 'eggs', 'spam']
end

def get_template(file) #this is our template, defined as a single string

  s = ""
  File.open(file) do |f|
    f.each_line do |line|
      s.concat(line)
    end
  end
  s
end

  # ERB::Util provide h() method, which is html_encode()
  # i think it is used by f.write()
  # see erb-util.pages file for detail
class ShoppingList
  include ERB::Util
  attr_accessor :items, :template, :date

  def initialize(items, template, date=Time.now)
    @date = date
    @items = items
    @template = template
  end

  def render() #creating new ERB template
    ERB.new(@template).result(binding) #processing the template; 'binding' provides access to other data such as instance vars
  end

  def save(file)  #function to write to an output file?
    File.open(file, "w+") do |f|
      f.write(render)
    end
  end

end

#create new instance of ShoppingList and save to output file?
list = ShoppingList.new(get_items, get_template(ARGV[0]))
list.save(File.join(ENV['PWD'], 'list.html'))
