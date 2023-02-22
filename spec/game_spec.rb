require 'spec_helper'

RSpec.describe Game do

  let(:game) {Game.new}
  let(:board) {Board.new}

  it "exists" do
      expect(game).to be_an_instance_of(Game)
      expect(game.board).to be_an_instance_of(Board)

  end

  describe 'check for various wins' do
    it 'check for player verticle win' do
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      # require 'pry'; binding.pry
      expect(game.player_verticle_win.include?("xxxx")).to eq true
    end

  end


end