class RandomWord 
  def word
    file_content = File.read("../google-10000-english-no-swears.txt")
    words_array = file_content.split("\n")
    random_word = words_array.sample
    
    if random_word.length > 5 and random_word.length < 12
      return random_word
    else
      word()
    end
  end

end


# Testing
# random = RandomWord.new
# puts random.word

