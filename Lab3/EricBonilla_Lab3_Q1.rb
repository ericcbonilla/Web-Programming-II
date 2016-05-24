#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 1: Check if method is inherited: \n\n"

class MyClass
  def self.my_method  #class method
    puts "my_method of MyClass\n\n"
  end
end

class MySubClass < MyClass
  puts "MySubClass"
end

obj1 = MySubClass.new()
MySubClass.my_method

#Checking if class is inherited
# puts MySubClass.superclass == MyClass
puts MySubClass.methods.include?(:my_method)
