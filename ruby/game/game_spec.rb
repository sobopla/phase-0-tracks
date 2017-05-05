require_relative 'game'

describe Game do
  let(:game) {Game.new("bitty kitty")}

  it "makes a board array replacing letters with _ " do
  expect(game.make_board).to eq ["_", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_"]
  end


  it "joins board array with spaces to show user the board in a string" do
  game.make_board
  expect(game.make_display_board).to eq "_ _ _ _ _   _ _ _ _ _"
  end



end
