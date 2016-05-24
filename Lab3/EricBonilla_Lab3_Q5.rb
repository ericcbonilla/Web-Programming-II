#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 5: Modules \n\n"

# Part A
module Greetings
  def english
    puts "Hello!"
  end
  def french
    puts "Bonjour!"
  end
  def spanish
    puts "Hola!"
  end
end

class Hello
  include Greetings
end

hello = Hello.new()
puts hello.english
puts hello.french
puts hello.spanish

# Part B: Calling methods directly
class Hello2
  extend Greetings
end

# hello = Hello.new()
puts Hello2.english
puts Hello2.french
puts Hello2.spanish
