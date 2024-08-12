require_relative "random_word"

class DisplayWord
  attr_reader :temp_word

  def initialize
    @temp_word = []
  end

  def make_fill_ins(length)
    (0...length).each do |i|
      @temp_word.push("_")
    end
  end

  def display(letter, index)
    @temp_word[index] = letter
    return @temp_word
  end
end


# Test
# demo = DisplayWord.new
# p demo.display('m',1)
# p demo.display('p',2)