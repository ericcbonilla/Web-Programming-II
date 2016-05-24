#Eric Bonilla
#COEN 164 Assignment 3
#5/8/16

require_relative 'enclose.rb'
require_relative 'compress.rb'
require_relative 'compress2.rb'
require_relative 'collect.rb'
require_relative 'advisor.rb'

puts "\nQuestion 1: \n"
obj1 = Enclose.new("<", ">", "i", "love", "you")
puts obj1.enclosed
puts obj1.set("<", ">", "i", "love", "you", "very", "much").to_s

def obj1.reverse
  enclosed.reverse.to_s
end

puts obj1.reverse



puts "\n\nQuestion 2\n"
obj2 = Compress.new("I love you very very very much")
puts obj2.compressed
puts obj2.indeces



puts "\n\nQuestion 3\n"
obj3 = Compress2.new("the quick brown fox jumped over the lazy dog")
puts obj3.compress
puts obj3.indeces



puts "\n\nQuestion 4\n"
puts [1, 2, 3, 4, 5].collect {|x| x*x}
puts "\n"

arr1 = [1, 2, 3]
# puts arr1.find {|x| x == x*x}

puts arr1.collect! {|x| x*x}
puts arr1



puts "\n\nQuestion 5\n"
puts obj2.each
puts obj2.reverse_each.to_s



puts "\n\nQuestion 6\n"
print_lines("advisor.txt")
