#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 7: Regexes \n\n"

string = "create1 any long string, then2 use regular34 express to find"

# i = 0
# while i < string.length
#   if // === string[i]
#     puts string[i]
#     i+=1
#   end
# end

puts "all words: \n"
puts string.scan(/(\w+)/)

puts "\n3 letter strings: \n"
puts string.scan(/(\w{3})/)

puts "\nall numbers: \n"
puts string.scan(/(\d+)/)

puts "\nall vowels: \n"
puts string.scan(/[aeiou]/)
