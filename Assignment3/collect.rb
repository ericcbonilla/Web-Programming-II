#Eric Bonilla
#COEN 164 Assignment 3
#5/8/16

class Array
  def collect
    arr = []

    #yield the new array as it is passed through the block
    self.each do |i|
      arr << yield(i)
    end
    arr
  end

  def collect!
    arr = []
    self.each do |i|
      # arr << yield(i)
    end
    nil
  end
end
