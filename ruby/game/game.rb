

class Game
  attr_accessor :phrase_board, :is_over
  attr_reader :is_won, :phrase_board, :guessed, :phrase_array, :letters_amount  #:phrase  #remove phrase later?
  attr_writer :phrase_array, :print_phrase_board
  def initialize(phrase)
    @phrase = phrase.downcase
    @guessed = [] 
    @is_won = false 
    @phrase_array = phrase.split("")
    @phrase_board = []
    @letters_amount = nil
    @print_phrase_board = @print_phrase_board
    
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
    @letters_amount =  letters_arr.length
  end

  def check_letter(letter) 
    letter = letter.downcase
    
    if phrase_array.include?(letter)
      @guessed << letter
      puts "Correct!" # " The display is now #{phrase_board.join(" ")}"
      true 
    elsif @guessed.include?(letter) #find double letters
      @guessed.delete_if{|char| char == letter}
      @guessed << letter
      puts "You already guessed that letter but it will not count as a guess"
    else 
      puts "Sorry that letter is not in the phrase, try again"  
      @guessed << letter
      #self.is_over?
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
    #p phrase_array 
  end

  def print_phrase_board
    display = @phrase_board.join(" ")
    p "The board is now:  #{display}"
  end

  def is_over
    
    if !(@phrase_board.include? "_")
        @is_won = true
        puts "YOU WON!"
        return true  
    end
    if @guessed.length == @letters_amount && @phrase_board.include?("_")
        @is_won = false
        puts "YOU'RE A LOSER"
        return true
    end
    if 
      false
    end
 
  end

  #def phrase_board_filled = phrase_board.join

end ###end of class
#
game = Game.new("bitty kitty")
game.make_board
# p game.make_board
# p game.phrase_board
# p "----make_display_board"
# p game.make_display_board
# p "----------------------"
# p game.count_letters
# p game.is_won
# p game.guessed
# #p game.phrase
# p game.phrase_array
# p game.check_letter("b")
# p game.check_letter("c")
# p game.guessed
#---------
game.check_letter("p")
  game.process_letter("p")
  
  game.check_letter("h")
  game.process_letter("h")
  
  game.check_letter("o")
  game.process_letter("o")
  
  game.check_letter("e")
  game.process_letter("e")
  
  game.check_letter("l")
  game.process_letter("l")
  
  game.check_letter("x")
  game.process_letter("x")
  
  game.check_letter("z")
  game.process_letter("z")
  
  game.check_letter("t")
  game.process_letter("t")
  
  game.check_letter("q")
  game.process_letter("q")
  
  game.check_letter("k")
  game.process_letter("k")
  p game.count_letters
  p game.guessed
  p game.guessed.length
  p game.is_over
  p game.letters_amount






#----------
# game.process_letter("p")
#   game.process_letter("h")
# p game.guessed
#   game.process_letter("o")
#   game.process_letter("e")
#   game.process_letter("l")
#   game.process_letter("x")
#   game.process_letter("z")
#   game.process_letter("t")
#   game.process_letter("q")
#   game.process_letter("k")
# p game.print_phrase_board
# p game.phrase_board 
# p game.guessed
# p game.guessed.length


# puts game.print_phrase_board
# p "------------"
# p game.phrase_board

#p game.display_board

