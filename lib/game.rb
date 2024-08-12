require_relative "player"
require_relative "random_word"
require_relative "display"

class Game 
  def initialize
    @deaths = 0
    @is_game = true
    @word = RandomWord.new.word
    @word_array = @word.split("")
    @player = Player.new
    @display = DisplayWord.new 
  end

  def play 
    # Prepare the display with underscores
    @display.make_fill_ins(@word.length)

    p @word  # For debugging purposes, you might want to remove this later
    while @is_game
      puts "Enter the letter you're thinking."
      player_letter = @player.user_word
      found = false
      
      @word_array.each_with_index do |letter, index|
        if player_letter == letter
          found = true
          @display.display(letter, index)
        end
      end
      puts "> #{@display.temp_word.join(' ')}"

      unless found
        @deaths += 1
        puts "#{7-@deaths} turns remaining!"
      end
      
      if @deaths == 7
        puts "Game over! The word was: #{@word}"
        @is_game = false
      end

      if @display.temp_word.join("") == @word
        puts "Yatta! You guessed the word correctly."
        @is_game = false
      end
      puts "-"*30
    end
  end
end
