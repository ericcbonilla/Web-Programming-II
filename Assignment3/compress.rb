#Eric Bonilla
#COEN 164 Assignment 3
#5/8/16

#For questions 2 and 5

class Compress
  attr_accessor :string, :compressed, :indeces

  def initialize(string)
    @string = string
    @str_split = @string.split(/ /)
    @compressed = @str_split.uniq.to_s #split string into words and remove non-unique words
    @indeces = []

    #fill indeces, which includes an index for each word in the string
    for i in 0..@str_split.length
      @indeces[i] = i
    end

    #loop through word array
    for i in 0..@str_split.length
      #in each iteration, iterate over the already iterated portion, renaming any duplicates
      for j in i..@str_split.length
        if @str_split[i] == @str_split[j]
          @indeces[j] = @indeces[i]
        end
      end
    end
  end

  include Enumerable

  #return each word in the original string
  def each
    return @string.split(/ /).to_a
  end

end
