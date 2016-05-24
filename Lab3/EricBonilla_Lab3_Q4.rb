#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 4: Modules \n\n"

module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A = 16
B = 23
C = 42


puts "#{Dojo::A} #{Dojo::Kata::B}"
# puts Dojo::Kata::Roulette::ScopeIn.push

obj1 = Dojo::Kata::Roulette::ScopeIn.new()
puts obj1.push
puts "#{A} #{B} #{C}"
