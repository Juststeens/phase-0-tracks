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
    @guess
    @guessed = []
    @underscores = []
  end

  def begin
    puts "Welcome to Hangman! your word will be #{@word.length} letters long and you will have #{@word.length} guesses"
  end

  def game_board
    #output underscores in place of each character of any word.
    @word.length.times do |letter|
      @underscores << '_ '
    end
    puts "#{@underscores.join} this word is #{@word.length} characters long"
  end

  def guess(answer)
    until @underscores.join == @word or @lives == 0
      puts "What is your guess?"
      answer = gets.chomp.to_s.downcase
      if answer.length != 1
        puts "Guess must be a single-character!"
      end
      if @guessed.include? answer
        puts "Letter #{answer} was guessed already!"
      else
        @guessed << answer
      end
      found = false
      @word.split('').each_with_index do |letter, position|
        if answer == letter
          @underscores[position] = answer
          found = true
          puts "Congratulations, you win" if @underscores.join == @word
        end
      end
      @lives -= 1 if !found
      puts "you have #{@lives} lives"
      puts @underscores.join
      puts "How did you not get #{@word}? Sorry, you lose." if @lives == 0
    end
  end

#   def win
#     @underscores == @word
#     puts "Congratulations! you've won"
#   end

#   def lose
#     @lives == 0
#     puts "How did you not get #{@word}?"
#   end
end

answer = nil


puts "what's the secret word?"
word = gets.chomp
hangman = Hangman.new(word)
puts
puts
puts
puts
puts
puts
puts
puts
hangman.begin
hangman.game_board
hangman.guess(answer)



