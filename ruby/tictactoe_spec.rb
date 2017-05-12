require_relative 'tic_tac_toe'

describe Tictac do
	let(:tic_tac_toe) {Tictac.new}

it "prints the board" do
	expect(tic_tac_toe.print_board).to eq [7, 8, 9]	
end

it "checks if the spot on the board is availale" do 
	expect(tic_tac_toe.spot_open?(2)).to eq true
end

it "switches the player" do
	expect(tic_tac_toe.switch_player).to eq "X" 
end

it "places the move on the board" do
	tic_tac_toe.position(5)
	expect(tic_tac_toe.board).to eq [1, 2, 3, 4, "O", 6, 7, 8, 9]
	end

it "prints the board with X / O filled in" do
	tic_tac_toe.position(7)
	tic_tac_toe.position(9)
	expect(tic_tac_toe.print_board).to eq ["O", 8, "O"]
end


end