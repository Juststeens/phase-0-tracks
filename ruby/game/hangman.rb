# Create a class
# use methods to perform the following steps
# explain the game
# provide the length of the word
# ask for input
# display every letter input correctly
# end game after certain number of answers
# if a letter is used delete it from the array
# if the player attempts to use a letter that
# is no longer in an array output error message
#
#
require 'pry'



class Hangman

  def initialize(word)
    @word = word.downcase
    @letters = word.chars.to_a
    @lives = word.length
    @found = false
    @guessed = []
    @underscores = []
  end

  def print_welcome_message
    puts "Welcome to Hangman! your word will be #{@word.length} letters long and you will have #{@word.length} guesses"
  end

  def word
    @word
  end

  def setup_game_board
    @word.length.times do |letter|
      @underscores << '_ '
    end
    p "#{@underscores.join} this word is #{@word.length} characters long"
  end

  def answer_one_character?
      @answer.length != 1
  end

  def answer_match?(letter)
    @answer == letter
  end

  def win?
    @underscores.join == @word
  end

  def lose?
    @lives == 0
  end

  def game_over?
    win? or lose?
  end

  def check_for_answer_validity
    puts "Letter #{@answer} was guessed already!" if @guessed.include? @answer
    puts "Guess must be a single-character!" if answer_one_character?
  end

  def request_answer
    puts "What is your guess?"
  end

  def get_answer
    @answer = gets.chomp.to_s.downcase
  end

  def store_new_answer
    @guessed << @answer if !@guessed.include? @answer
  end

  def print_message_end_of_turn
    puts "you have #{@lives} lives"
    puts @underscores.join
  end

  def end_turn
    print_message_end_of_turn
    @lives -= 1 if !@found
    reset_found
  end

  def reset_found
    @found = false
  end

  def end_game
    puts "How did you not get #{@word}? Sorry, you lose." if lose?
    puts "Congratulations, you win" if win?
  end

  def update_hidden_word(position)
    @underscores[position] = @answer
  end

  def process_answer
    @word.split('').each_with_index do |letter, position|
      if answer_match?(letter)
        update_hidden_word(position)
        @found = true
      end
    end
  end

  def guess
    until game_over?
      request_answer
      get_answer
      check_for_answer_validity
      store_new_answer
      process_answer
      end_turn
    end
    end_game
  end
end




