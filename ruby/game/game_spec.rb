require_relative 'game'

describe Game do
  let(:game) {Game.new("bitty kitty")}

  it "makes a board hiding letters with _ " do
  expect(game.make_board).to eq ["_", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_"]
  end






end
