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

  it "gets letters amount(check initialize value)" do  
  expect(game.letters_amount).to eq 10 
  end

  it "checks letter from user in the phrase (HAS LETTER)" do 
  game.make_board
  expect(game.check_letter("b")).to be true
  end

  it "checks letter from user in the phrase (LETTER NOT FOUND" do
  game.make_board
  expect(game.check_letter("p")).to be false
  end

  it "processes the correct guessed letter into the phrase board" do
  game.make_board
  game.check_letter("b")
  expect(game.process_letter("b")).to eq ["b", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_"]
  end

  it "processes the letter guessed for all places the letter has"do
  game.make_board
  game.check_letter("t")
  expect(game.process_letter("t")).to eq ["_", "_", "t", "t", "_", " ", "_", "_", "t", "t", "_"]
  end
  
  it "adds letters to the storage array" do
  game.make_board
  game.check_letter("b")
  game.check_letter("c")
  expect(game.guessed).to eq ["b", "c"]
  end

  it "prints the board with the correct letters guessed filled"do
  game.make_board
  game.process_letter("t")
  game.process_letter("i")
  game.process_letter("y")
  expect(game.print_phrase_board).to eq "The board is now:  _ i t t y   _ i t t y" 
  end

  it "checks if the game is over (GAME WON)" do
  game.make_board
  game.process_letter("b")
  game.process_letter("i")
  game.process_letter("t")
  game.process_letter("y")
  game.process_letter("k")
  p game.phrase_board
  expect(game.is_over).to eq true 
  end

  it "checks if the game is over (GAME LOST)" do
  game.make_board
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
  expect(game.is_over).to eq true
  
  end

  

end
