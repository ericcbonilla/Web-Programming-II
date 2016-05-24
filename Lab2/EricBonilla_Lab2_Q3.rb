#Eric Bonilla
#COEN 164 Lab 2
#4-14-16

puts "\n 3. Setters and Getters\n"

class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  #Getters
  def item_name
    @item_name
  end

  def quantity
    @quantity
  end

  #Setters
  def item_name=(x)
    @item_name=x
  end
  def quantity=(x)
    @quantity=x
  end
end

obj1 = Item.new("Name", 10)
puts "item_name: #{a = obj1.item_name}"
puts "quantity: #{b = obj1.quantity}"

puts "\nnew item_name: #{obj1.item_name = "NewName"}"
puts "new quantity: #{obj1.quantity = 15}"



puts "\n\n Now using attr_accessor: \n"
class Item
  attr_accessor :item_name, :quantity

  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
end

obj2 = Item.new("Name2", 20)
puts "item_name: #{a = obj2.item_name}"
puts "quantity: #{b = obj2.quantity}"

puts "\nnew item_name: #{obj2.item_name = "NewName2"}"
puts "new quantity: #{obj2.quantity = 150}"
