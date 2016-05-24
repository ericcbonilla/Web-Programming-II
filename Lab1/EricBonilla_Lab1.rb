#Eric Bonilla
#COEN 164 Lab 1
#4-7-16

puts "\nA. BASIC PRACTICE: "


#check out code
puts "\nCHECK OUT CODE \n"

puts "love".reverse   #evol
puts "love".respond_to?(:reverse)   #true

mysymbol = :love
# puts mysymbol.reverse
 #received error: undefined method `reverse' for :love:Symbol (NoMethodError)

puts mysymbol.respond_to?(:reverse) #false

puts [:a, :b, :c].include?(:a)  #true
puts ["apple", "banana", "orange"].include?("cherry") #false

puts ["Hello", "from", "the", "other", "side"].join #Hellofromtheotherside
puts ["Hello", "from", "the", "other", "side"].join(" ") #Hello from the other side
puts ["Hello", "from", "the", "other", "side"].join("-") #Hello-from-the-other-side

snowy_owl = {"type" => "Bird", "diet" => "Carnivore", "life_span" => "12 years"} #declaration
puts snowy_owl["type"] #bird

snowy_owl["weight"] = "0.5 ounces" #declaration

puts snowy_owl #{"type" => "Bird", "diet" => "Carnivore", "life_span" => "12 years", "weight" => "0.5 ounces"}
puts snowy_owl.keys #type diet life_span weight
puts snowy_owl.values # Bird Carnivore 12 Years 0.5 ounces

puts "\nWRITE CODE\n"

#write code
array = ["apple", "banana", "orange", "cherry"]
puts "Primitive loop (while): "
x = 0
while x < array.length
  puts array[x]
  x+=1
end

puts "\n"

puts "Non-primitive loop (loop): "
x = 0
loop do
  break if x > array.length
  puts array[x]
  x+=1
end

puts "Printing each key and value of hash: "
puts "\nPrimitive loop (while): "

x = 0
while x < snowy_owl.length
  puts snowy_owl.keys[x]
  puts snowy_owl.values[x]
  x+=1
end

puts "\nNon-primitive loop (loop): "

x = 0
loop do
  break if x > snowy_owl.length
  puts snowy_owl.keys[x]
  puts snowy_owl.values[x]
  x+=1
end



puts "\nB. ITERATOR IMPLEMENTATION PRACTICE: "

class Array
  def loop
    m = 0
    while m < self.length
      yield self[m]
      yield " "
      m+=1
    end
  end

  def reverse
    n = self.length

    while n >= 0
      # arr.push[self[n]]
      # puts self[n]
      yield self[n]
      yield " "
      n-=1
    end
    # yield arr
  end

  def myeach
    q = 0
    while q < self.length
      print "index: "
      yield q
      print " value: "
      yield self[q]

      puts "\n"
      q+=1
    end
  end
end

arr0 = [2, 3, 4, 5, 6]

#loop
puts "\nloop: "
arr0.loop {|x| print "#{x}"}

#reverse
puts "\n\nreverse: "
arr1 = [1, 2, 3, 4]
arr1.reverse {|x| print "#{x}"}

#myeach
puts "\n\nmyeach: "
arr0.myeach {|x| print "#{x}"}
