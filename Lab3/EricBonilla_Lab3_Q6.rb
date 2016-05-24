#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 6: Regexes \n\n"

puts "/hello/: "
puts /hello/ === "hello"
puts /hello/ === "hello there"
puts /hello/ === "hello "
puts /hello/ === "hello!"
puts /hello/ === "hello?"

puts" /love | hate/"
puts /love | hate/ === "i love you"
puts /love | hate/ === "i hate you"
puts /love | hate/ === "i love "
puts /love | hate/ === "i hate"
puts /love | hate/ === "ilove you"

puts" /colou?r/"
puts /colou?r/ === "colour"
puts /colou?r/ === "color"
puts /colou?r/ === "color?"
puts /colou?r/ === "color!"
puts /colou?r/ === "colour!"

puts" /gr[ae]y/"
puts /gr[ae]y/ === "gray"
puts /gr[ae]y/ === "grey"
puts /gr[ae]y/ === "greyy"
puts /gr[ae]y/ === "grayy"
puts /gr[ae]y/ === "ggrayy"

puts" /b[aeiou]bble/"
puts /b[aeiou]bble/ === "bubble"
puts /b[aeiou]bble/ === "bobble"
puts /b[aeiou]bble/ === "bibble"
puts /b[aeiou]bble/ === "bubble"
puts /b[aeiou]bble/ === "bebble"

puts" /go*gle/"
puts /go*gle/ === "gogle"
puts /go*gle/ === "google"
puts /go*gle/ === "gooogle"
puts /go*gle/ === "goooogle"
puts /go*gle/ === "gooooogle"

puts" /go+gle/"
puts /go+gle/ === "google"
puts /go+gle/ === "gooogle"
puts /go+gle/ === "goooogle"
puts /go+gle/ === "gooooogle"
puts /go+gle/ === "goooooogle"

puts" /g(oo)+gle/"
puts /g(oo)+gle/ === "google"
puts /g(oo)+gle/ === "goooogle"
puts /g(oo)+gle/ === "goooooogle"
puts /g(oo)+gle/ === "goooooooogle"
puts /g(oo)+gle/ === "goooooooooogle"

puts" /x{3}/"
puts /x{3}/ === "xxx"
puts /x{3}/ === "xxxx"
puts /x{3}/ === "xxxxx"
puts /x{3}/ === "xxxxxx"
puts /x{3}/ === "xxxxxxx"

puts" /x{6,10}/"
puts /x{6,10}/ === "xxxxxx"
puts /x{6,10}/ === "xxxxxxx"
puts /x{6,10}/ === "xxxxxxxx"
puts /x{6,10}/ === "xxxxxxxxx"
puts /x{6,10}/ === "xxxxxxxxxx"

puts" /w/"
puts /w/ === "word"
puts /w/ === "words"
puts /w/ === "wordss"
puts /w/ === "wordsss"
puts /w/ === "wordssss"

puts" /\w/"
puts /\w/ === "asdf"
puts /\w/ === "word"
puts /\w/ === "words"
puts /\w/ === "Eric"
puts /\w/ === "abcdef"

puts" /d/"
puts /d/ === "deck"
puts /d/ === "dock"
puts /d/ === "duck"
puts /d/ === "d"
puts /d/ === "d "

puts" /\d/"
puts /\d/ === "1"
puts /\d/ === "12"
puts /\d/ === "123"
puts /\d/ === "1234"
puts /\d/ === "12345"

puts" /\d{5}/"
puts /\d{5}/ === "12345"
puts /\d{5}/ === "123456"
puts /\d{5}/ === "1234567"
puts /\d{5}/ === "12345678"
puts /\d{5}/ === "123456789"

puts" /\d+(\.\d\d)?/"
puts /\d+(\.\d\d)?/ === "123.43"
puts /\d+(\.\d\d)?/ === "123"
puts /\d+(\.\d\d)?/ === "1"
puts /\d+(\.\d\d)?/ === "12"
puts /\d+(\.\d\d)?/ === "1.12"

puts" /hello\d+/"
puts /hello\d+/ === "hello1"
puts /hello\d+/ === "hello12"
puts /hello\d+/ === "hello123"
puts /hello\d+/ === "hello1234"
puts /hello\d+/ === "hello12345"

puts" /sh[^io]t/"
puts /sh[^io]t/ === "shat"
puts /sh[^io]t/ === "shut"
puts /sh[^io]t/ === "sh1t"
puts /sh[^io]t/ === "sh2t"
puts /sh[^io]t/ === "shjt"

puts" /^ruby/"
puts /^ruby/ === "ruby"
puts /^ruby/ === "ruby on rails"
puts /^ruby/ === "rubyonrails"
puts /^ruby/ === "ruby1"
puts /^ruby/ === "ruby2"

puts" /ruby$/"
puts /ruby$/ === "ruby"
puts /ruby$/ === "1ruby"
puts /ruby$/ === "12ruby"
puts /ruby$/ === "123ruby"
puts /ruby$/ === "1234ruby"

puts" /^ruby$/"
puts /^ruby$/ === "ruby"
