

class Game

  attr_reader :is_won, :phrase_board, :display_board, :guessed, :phrase_array, :phrase #remove phrase later
  attr_writer :phrase_array
  def initialize(phrase)
    @phrase = phrase.downcase
    @guessed = [] #same as guessed before
    @is_won = false 
    @phrase_array = phrase.split("")
    @phrase_board = []
    @display_board = display_board
    @letters_amount = nil
    
  end

  def make_board
    @phrase_board = @phrase.gsub(/[a-zA-Z"]/, "_") .split("") #.join(" ")
    #same as phrase_array
  end

  def make_display_board
    @display_board = phrase_board.join(" ")
  end

  def count_letters
    letters_arr = @phrase.split("") - [" "]
    letters_amount =  letters_arr.length
  end

  def check_letter(letter) 
    letter = letter.downcase
    #find double letters
    if phrase_array.include?(letter)
      # letter_index = phrase_array.find_index(letter)

      # phrase_board.each_with_index do |char, index|
      #   if phrase_array[index] == letter
      #      phrase_board[index] = letter
      @guessed << letter
      #   end
      # end
      # phrase_array[letter_index] = ""
      # phrase_board[letter_index] = letter
      puts "Correct!" # " The display is now #{phrase_board.join(" ")}"
      true
      #p @guessed #checking 
    elsif @guessed.include?(letter)
      @guessed.delete_if{|char| char == letter}
      @guessed << letter
      puts "You already guessed that letter but it will not count as a guess"
    else 
      puts "Sorry that letter is not in the phrase, try again"  
      @guessed << letter
      false
    end
  end

  def process_letter(letter)
    letter_index = phrase_array.find_index(letter)
    phrase_board.each_with_index do |char, index|
      if phrase_array[index] == letter
         phrase_board[index] = letter
      end
    end
    # doesn't process double letters or more:
    # phrase_array[letter_index] == ""
    # phrase_board[letter_index] = letter
    p phrase_board
    p phrase_array
    phrase_board 
  end

  #def phrase_board_filled = phrase_board.join

end ###end of class

game = Game.new("bitty kitty")
game.make_board
p game.make_board
p game.phrase_board
p game.make_display_board
p game.count_letters
p game.is_won
p game.guessed
p game.phrase
p game.phrase_array
p game.check_letter("b")
p game.check_letter("c")
p game.guessed

