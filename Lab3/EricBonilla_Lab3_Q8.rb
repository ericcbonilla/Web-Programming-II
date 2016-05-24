#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 8: Reading File \n\n"

i = 0
File.open("myfile.txt") do |file|
  file.each_line {|line|
    if i.even?
      puts "#{line}"
    end
    i+=1
  }
end
