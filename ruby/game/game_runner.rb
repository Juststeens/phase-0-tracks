require_relative 'hangman'

puts "what's the secret word?"
hidden_word = gets.chomp
hangman = Hangman.new(hidden_word)
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
hangman.print_welcome_message
hangman.setup_game_board
hangman.guess

