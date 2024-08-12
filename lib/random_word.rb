class RandomWord 
  def word
    file_content = File.read("../google-10000-english-no-swears.txt")
    words_array = file_content.split("\n")
    return words_array.sample
  end

end


# Testing
random = RandomWord.new
puts random.word

