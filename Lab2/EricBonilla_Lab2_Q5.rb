#Eric Bonilla
#COEN 164 Lab 2
#4-14-16

# puts "\n 5. Singleton Methods: "

class Foo
  @var = 10
  def self.some_class_method
    puts "inside class method #{self}"
    puts "------"
  end

  def some_instance_method
    puts "self in instance method definition = #{self}"
    self.class.some_class_method
    puts "-------"
  end

  #this will output: Class
  puts "class of self = #{self.class}"
  puts "self in class definition = #{self}"
end

print "Class method: "
Foo.some_class_method

print "Instance method: "
Foo.new.some_instance_method


class FooChild < Foo
  self.some_class_method

  def child_method
    puts "child method"
  end
end


puts "---------------------------------"
obj1 = FooChild.new()
obj1.class.some_class_method
obj1.some_instance_method


#Singleton method
def obj1.singlt
  puts "singleton method"
end

obj1.singlt

#Object Chain
puts "\n Object Chain"
obj1.class.some_class_method
obj1.some_instance_method
obj1.inspect
