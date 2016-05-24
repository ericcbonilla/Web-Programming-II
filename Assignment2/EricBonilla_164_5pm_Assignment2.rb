#!/usr/bin/ruby

#Eric Bonilla
#COEN 164 Assignment 2
#4/17/16

#Question 1
puts "\nQuestion 1: \n\n"

#given string defined with here document
str = <<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant a federal judge said Friday
EOS

def countWords(string, word=nil)

  #if no second argument given, create a hash of word frequencies
  if (word==nil)

    #convert the string to an array of words
    strArray = string.split(" ")

    #create a hash and count each word's frequency
    freq = Hash.new(0)
    strArray.each{|word| freq[word]+=1}

    print "Word frequencies are listed as follows: "
    return freq
  end

  #if an empty string is given for word
  if word.empty? == true
    puts "\nPlease enter a string of at least 1 character."
    return
  end

  #convert the string to an array of words
  strArray = string.split(" ")

  #loop through array and count number of word instances
  i = 0
  count = 0
  while (i < strArray.length)
    if (strArray[i] == word)
      count+=1
    end
    i+=1
  end

  print "Number of instances of '#{word}': "
  count
end

#demo
puts countWords(str, "a")
puts countWords(str, "he")
puts countWords(str, "Friday")
puts countWords("this is a string", "is")
puts countWords(str)
puts countWords("this is a string", "")



#Question 2
puts "\n\nQuestion 2: "

students = [
  {:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},

  {:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 956734244},

  {:firstname => "Marisa", :lastname => "Lastnamemarisa",  :phonenumber => 443234567},

  {:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 451344214}
]

def search_students(arr, searchTerm: "")

  puts "\nYour search '#{searchTerm}' produced the following results: \n"
  puts "First Name: \t Last Name: \t Phone Number: \t"

  i = 0
  found = false

  #loop through array and check for match
  while i < arr.length
    if (searchTerm == arr[i][:firstname] || searchTerm == arr[i][:lastname] || searchTerm == arr[i][:phonenumber])
      puts "#{arr[i][:firstname]} \t\t #{arr[i][:lastname]} \t #{arr[i][:phonenumber]}"
      found = true
    end
    i+=1
  end

  #if no results were found
  if found == false
    puts "No results were found for '#{searchTerm}'\n\n"
  end
end

#demo
search_students(students, searchTerm: "Ken")
search_students(students, searchTerm: "Lastnamemarisa")
search_students(students, searchTerm: 123456789)
search_students(students, searchTerm: "Eric")
