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
    @word = word
    @letters = word.chars.to_a
    @alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
    "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    @lives = word.length
    @guess
  end

  def begin
    puts "Welcome to Hangman! your word will be #{@word.length} letters long and you will have #{@word.length} guesses"
  end

  def game_board
    #output underscores in place of each character of any word.
    underscores = []
    @word.length.times do |letter|
      underscores << '_ '
    end
    puts "#{underscores.join} this word is #{@word.length} characters long"
  end

  def guess(answer)
    answer = gets.chomp.upcase.strip
    @alphabet.delete_if {|letter| letter == answer}
    @word.each do |letter|
      if answer == letter


    end
  end

end

puts "what's the secret word?"
word = gets.chomp
hangman = Hangman.new(word)

puts "what's your guess"
answer = gets.chomp
hangman.guess(answer)

hangman.game_board

