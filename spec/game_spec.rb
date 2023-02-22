require 'spec_helper'

RSpec.describe Game do
  let(:game) {Game.new}

  it "exists" do
      expect(game).to be_an_instance_of Game
      expect(game.board).to be_an_instance_of Board
  end

  describe 'check for various wins' do
    it 'check for player and computer verticle win' do
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      expect(game.verticle_win.include?("xxxx")).to eq true
      expect(game.verticle_win.include?("oooo")).to eq true
    end

    it 'check for player and computer horizontal win' do
      game.board.cells[5][0].value = "x"
      game.board.cells[5][1].value = "x"
      game.board.cells[5][2].value = "x"
      game.board.cells[5][3].value = "x"
      expect(game.horizontal_win.include?("xxxx...")).to eq true
    end

    it '#check win' do
    game.board.cells[5][0].value = "x"
    game.board.cells[5][1].value = "x"
    game.board.cells[5][2].value = "x"
    game.board.cells[5][3].value = "x"
    expect(game.check_win).to be true
    end
  end

  # xit 'can play game' do
  #   game.game
  # end
  
  
end