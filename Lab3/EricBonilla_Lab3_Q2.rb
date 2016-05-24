#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 2: Modules \n\n"

module Module1
    def method11
      #method11
      puts "method11"
    end
    def method12
      #method12
      puts "method12"
    end
    def method13
      #method13
      puts "method13"
    end
end

module Module2
    def method21
      #method11
      puts "method21"
    end
    def method22
      #method12
      puts "method22"
    end
    def method23
      #method13
      puts "method23"
    end
end

class MyClass
  include Module1
  include Module2
end

puts "Calling module methods: "
obj1 = MyClass.new()
obj1.method12
obj1.method23
