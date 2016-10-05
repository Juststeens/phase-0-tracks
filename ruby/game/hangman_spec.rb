require_relative 'hangman'
require 'pry'

describe Hangman do
  let (:game) { Hangman.new('unicorn') }

  it "accepts a hidden word" do
    expect(game.word).to eq "unicorn"
  end

  it "it builds the game board" do
    expect(game.setup_game_board).to eq "_ _ _ _ _ _ _  this word is 7 characters long"
  end

end