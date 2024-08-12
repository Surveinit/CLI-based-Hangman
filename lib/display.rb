class DisplayWord
  def initialize
    @temp_word = ["_","_","_","_"]
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