

class Game

  attr_accessor :phrase_board
  attr_reader :is_won, :phrase_board, :guessed, :letters_amount  #
  attr_writer 

  def initialize(phrase)
    @phrase = phrase.downcase
    @guessed = [] 
    @is_won = false 
    @phrase_array = phrase.split("")
    @phrase_board = []
    @letters_amount = phrase.split.join.length
  end

  def make_board
    @phrase_board = @phrase.gsub(/[a-zA-Z"]/, "_") .split("") #.join(" ") will be for ui
  end

  def check_letter(letter) #refactor position of repeated guessed letter
    letter = letter.downcase
    
    if @phrase_array.include?(letter) && !@guessed.include?(letter)
      p "Correct!" 
    elsif @guessed.include?(letter) #find double letters
      @guessed.delete_if{|char| char == letter}
      p "You already guessed that letter but it will not count as a guess"
    else 
      p "Sorry that letter is not in the phrase"  
    end
    @guessed << letter 
  end

  def process_letter(letter)
    letter_index = @phrase_array.find_index(letter)
    phrase_board.each_with_index do |char, index|
      if @phrase_array[index] == letter
       phrase_board[index] = letter
     end
   end
   print_phrase_board 
 end

  def print_phrase_board #do I need to rspec this? It looks better puts not p'd / but I can't pass in rspec with puts because puts returns nil
    display = @phrase_board.join(" ")
    p "Here is the board:  #{display}"
  end

  def is_over
    if @guessed.length == @letters_amount && @phrase_board.include?("_")
      @is_won = false
      puts "YOU'RE A LOSER the phrase was: #{@phrase}" # ADD COLON
      return true
    elsif !(@phrase_board.include? "_")
      @is_won = true
      puts "YOU WON!"
      return true  
    else
      false
    end

  end

end # end of class

puts "User 1 , enter a phrase for user 2 to guess"
phrase = gets.chomp
game = Game.new(phrase)
game.make_board
game.print_phrase_board
until game.is_over  do
  puts "Guess a letter"
  letter = gets.chomp.downcase
  game.check_letter(letter)
  game.process_letter(letter)
end
