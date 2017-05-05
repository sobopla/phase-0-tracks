

class Game

  attr_reader :is_won, :phrase_board, :display_board
  def initialize(phrase)
    @phrase = phrase.downcase
    @guessed = []
    @is_won = false 
    @phrase_board = []
    @display_board = display_board
    @letters_amount = nil
    
  end

  def make_board
    @phrase_board = @phrase.gsub(/[a-zA-Z"]/, "_") .split("") #.join(" ")
  end

  def make_display_board
    @display_board = phrase_board.join(" ")
  end

  def count_letters
    @letters_amount = phrase.split("") - [" "]
  end

  #def phrase_board_filled = phrase_board.join





end

game = Game.new("bitty kitty")
game.make_board
p game.make_board
p game.phrase_board
p game.make_display_board

