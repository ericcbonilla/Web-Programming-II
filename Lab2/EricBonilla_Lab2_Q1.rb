#Eric Bonilla
#COEN 164 Lab 2
#4-14-16

puts "\n 1. Variable number of paramaters\n"
def my_method (arg1, *rest_args)
  puts "#{arg1}, #{rest_args}"
  puts 1+rest_args.length
end

puts my_method(1, 2, 3, 4, 5, 6, 7)
