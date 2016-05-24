#using a template system with ERB

require 'erb'

def get_items() #method that returns an array of strings
  ['bread', 'milk', 'eggs', 'spam']
end

def get_template() #this is our template, defined as a single string
  %{
    <!DOCTYPE html>
    <html>
    <head>
    # %A - weekday, %d - day of the month, %B - full month name, %Y - year
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shopping List for <%= @date.strftime('%A, %d %B %Y') %></title>
    </head>
    <body>
      <h1>Shopping List for <%= @date.strftime('%A, %d %B %Y') %></h1>
                <p>You need to buy:</p>
                <ul>
                  <% for @item in @items %>
                    <li><%= h(@item) %></li>
                  <% end %>
                </ul>
      </body>
      </html>
 }
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
list = ShoppingList.new(get_items, get_template)
list.save(File.join(ENV['PWD'], 'list.html'))
