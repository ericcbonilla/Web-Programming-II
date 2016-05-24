#Eric Bonilla
#COEN 164 Lab 3
#4-21-16

puts "Question 3: Push Class: \n\n"

module Module1
  class Push
    def up
      40
    end
  end
end

                   # up returns 40
gym_push = Module1::Push.new
p gym_push.up

module Module2
  class Push
    def up
      30
    end
  end
end

                  # up returns 30
dojo_push = Module2::Push.new
p dojo_push.up

dojo_push = Module1::Push.new
p gym_push.up
