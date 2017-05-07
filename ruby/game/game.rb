

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
    @letters_amount = phrase.split.join.length
    @print_phrase_board = @print_phrase_board
    
  end

  def make_board
    @phrase_board = @phrase.gsub(/[a-zA-Z"]/, "_") .split("") #.join(" ") will be for ui
  end

  def make_display_board
    @display_board = phrase_board.join(" ")
  end

  # def count_letters #phrase.split.join easier than having this method
  #   letters_arr = @phrase.split("") - [" "]
  #   @letters_amount =  letters_arr.length
  # end

  def check_letter(letter) 
    letter = letter.downcase
    
    if phrase_array.include?(letter) && !@guessed.include?(letter)
      @guessed << letter
      p "Correct!" # " The display is now #{phrase_board.join(" ")}" 
    elsif @guessed.include?(letter) #find double letters
      @guessed.delete_if{|char| char == letter}
      @guessed << letter
      p "You already guessed that letter but it will not count as a guess"
    else 
      @guessed << letter
      p "Sorry that letter is not in the phrase, try again"  
    end
  end

  def process_letter(letter)
    letter_index = phrase_array.find_index(letter)
    phrase_board.each_with_index do |char, index|
      if phrase_array[index] == letter
       phrase_board[index] = letter
     end
   end 
  end

  def print_phrase_board #do I need to rspec this? It looks better puts not p'd / but I can't pass in rspec with puts because puts returns nil
    display = @phrase_board.join(" ")
    p "Here is the board:  #{display}"
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

end ###end of class
