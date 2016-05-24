#Eric Bonilla
#COEN 164 Assignment 3
#5/8/16

class Enclose
attr_accessor :sChar1, :sChar2, :words, :enclosed, :reset

  def initialize (sChar1, sChar2, *words)
    @sChar1 = sChar1
    @sChar2 = sChar2
    @words = words
    @enclosed = []

    #loop through string array and surround with input chars
    i = 0
    for i in 0...@words.length
      @enclosed[i] = "#{@sChar1}#{@words[i]}#{@sChar2}"
    end

    #convert to string array
    @enclosed = @enclosed.to_s
  end

  def set(sChar1, sChar2, *reset_words)
    @reset_words = reset_words
    @reset = []

    i = 0
    for i in 0...@reset_words.length
      @reset[i] = "#{@sChar1}#{@reset_words[i]}#{@sChar2}"
    end

    @enclosed = @reset
  end
end
