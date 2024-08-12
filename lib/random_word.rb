class RandomWord 
  def word
    file_content = File.read(File.expand_path('../google-10000-english-no-swears.txt', __dir__))
    words_array = file_content.split("\n")

    loop do
      random_word = words_array.sample
      return random_word if random_word.length.between?(6, 11)
    end
  end
end


# Testing
# random = RandomWord.new
# puts random.word

