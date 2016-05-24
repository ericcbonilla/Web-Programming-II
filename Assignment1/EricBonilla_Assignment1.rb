#Eric Bonilla
#COEN 164 Assignment 1
#4-8-16

=begin

For each of the class Integer, Range, String, Array and Hash:
1. give an example of its object

2. for each example object,  find two methods (from lecture slides or other Ruby resources) that takes block and give an example for each of such method call.

for example:  array object: [1,2,3,4]
        method call:  [1,2,3,4].each { | x | puts x**2 }

=end

puts "\n1. integer object: "
# 10
10.times {|x| print "#{x} "}
print "\n"
10.upto(15) {|x| print x, ' '}


puts "\n\n2. range object: "
# 'a'..'f'
('a'..'f').each {|x| print x, ' '}
print "\n"
a = ('a'..'f')
puts reg = a.reject {|x| x<'b'}


puts "\n3. string object: "
# "This is a string."
"This is a string.".each_byte{|x| print x, ' '}
"\nThis is a string.".each_char{|x| print x, '-'}


puts "\n\n4. array object: "
# [6, 6, 7, 8, 8, 9, 10]
[6, 6, 7, 8, 9, 10].uniq{|x| print x, '.'}
puts "\n"
[6, 6, 7, 8, 9, 10].delete_if {|x| print x < 9, ', '}


puts "\n\n5. hash object: "
# {'firstname' => 'eric', 'lastname' => 'bonilla'}
{'firstname' => 'eric', 'lastname' => 'bonilla'}.each_value {|x| print x, ' '}
puts "\n"

{'firstname' => 'eric', 'lastname' => 'bonilla'}.each_key {|x| print x, ' '}
puts "\n"
