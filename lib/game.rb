require_relative "player"
require_relative "random_word"
require_relative "display"
require 'json'
require 'colorize'

class Game 
  def initialize
    @deaths = 0
    @is_game = true
    @word = RandomWord.new.word
    @word_array = @word.split("")
    @player = Player.new
    @display = DisplayWord.new 
  end

  def load
    file_content = File.read('data.json')
    data = JSON.parse(file_content)

    # Accessing the values
    @word = data["random_word"]
    @word_array = @word.split("")
    @deaths = data["deaths"]
    @display.temp_word = data["temp_word"]
  end

def save
  data = {}
  data["random_word"] = @word
  data["deaths"] = @deaths
  data["temp_word"] = @display.temp_word

  File.write('data.json', JSON.pretty_generate(data))
end

  def play
    puts " Would you like to load previous game? (y/n) ".colorize(:color => :black, :background => :light_yellow) 
    load_response = gets.chomp
    if load_response == "y"
      load()
    elsif load_response == 'n'
      nil          
    end 
    
    # Prepare the display with underscores
    @display.make_fill_ins(@word.length) if @display.temp_word.empty?

    p @word  # For debugging purposes, you might want to remove this later
    while @is_game
      puts " Would you like to save this game? (y/n) ".colorize(:color => :black, :background => :light_yellow)
      save_response = gets.chomp
      if save_response == "y"
        save()
      elsif save_response == 'n'
        nil          
      end 

      puts " Enter the letter you're thinking. ".colorize(:color => :white, :background => :grey)
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
        puts "#{7-@deaths} turns remaining!".colorize(:color => :black, :background => :light_red)
      end
      
      if @deaths == 7
        puts ""
        puts " Game over! The word was: #{@word} ".colorize(:color => :black, :background => :red)
        @is_game = false
      end

      if @display.temp_word.join("") == @word
        puts ""
        puts " Yatta! You guessed the word correctly. ".colorize(:color => :black, :background => :yellow)
        @is_game = false
      end
      puts "-"*30
    end
  end
end
