require 'pp'
class Tictac
  attr_accessor :moves
  attr_reader :player1, :player2, :board


  def initialize
    @player1 = "O"
    @player2 = "X"
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    # @display_board = [ [1, 2, 3],[4, 5, 6],[7, 8, 9] ]
    @moves = 0
    @player = @player1
  end

  def print_board
    puts "choose a spot:"
    display = @board.each_slice(3).to_a 
    p display[0]
    p display[1]
    p display[2]
  end

  def spot_open?(num) #variable for true or false
    open = true
    if @board[num - 1].integer? #specific spot
      open = true
    else
      open = false
    end
    open
  end

  def switch_player
    if @player == @player1 
      @player = @player2
      puts "switching to player 2 ..."
    else 
      @player = @player1
      puts "switching to player 1 ..."
    end
  end


  def position(num)
    @board[num - 1] = @player
  end

  def process(num)
    if spot_open?(num)
      position(num)
        #is_won?  # need a game is_won? check if there are 3 in a row
        switch_player
    end
  end

  def is_won?(num)
     case win 
     when player is found at all three 
    # have a comparison board
    #check based on number? each number has 3 winning scenarios
    #change array to hash? row:1 => [xxx]
    # check if 123,456,etc == "O","O","O" || "X","X","X"



end #end of class
# TEST
t = Tictac.new
puts "Here is the board:"
t.print_board
puts "Player 1 what number do you want to move to?"
num = gets.chomp.to_i
@moves << num

t.process(num)
t.print_board






# t = Tictac.new
# p t.board
# t.position(6)
# t.print_board
# #t.switch_player
# t.position(9)
# t.print_board


# WIN CONDITIONS: 
# when 1,2,3  ||  1,4,7  ||  2,5,8  ||  3, 6, 9 ||
# when 4,5,6  ||  7,8,9   || 1,5,9  ||  3, 5, 7  
  if player 1
    if num  
    if ( board[0] && board[1] && board[2]) == "O" ||
     == "O" ||
    win = true
  end
  if board



# WIN CONDITIONS: 
# when 1,2,3  ||  1,4,7  ||  2,5,8  ||  3, 6, 9 ||
# when 4,5,6  ||  7,8,9   || 1,5,9  ||  3, 5, 7  
# X or O as players
# turns combined is 9 
# if win condition has not been met after 9 tries / game over
# game stops when a win condition is met
# need a print board for the player to see the board filled with their spot
# BOARD:
# [ [ 1 , 2, 3 ]
#   [ 4 , 5, 6 ]
#   [ 7 , 8, 9 ]
# ]
# player can look at the board and pick the number

# check_board for occupied space?

# MOVES
# PROCESS THE MOVE:
    # def position_picked(num)
    #   board[num+1] = player1_symbol "O" or  player 2_symbol "X"
    # end

# EVALUATE WIN CONDITIONS ON THE BOARD AFTER THE MOVE 

# need a player1 and player2 instance variable?
