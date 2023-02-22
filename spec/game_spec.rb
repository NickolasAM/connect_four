require 'spec_helper'

RSpec.describe Game do
  let(:game) {Game.new}

  it "exists" do
      expect(game).to be_an_instance_of(Game)
      expect(game.board).to be_an_instance_of(Board)
  end

  describe '#check for various wins' do
    it 'checkaa for verticle_win' do
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["A"] << "x"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      game.board.columns["B"] << "o"
      # require 'pry'; binding.pry
      expect(game.verticle_win.include?("xxxx")).to eq true
      expect(game.verticle_win.include?("oooo")).to eq true
    end

    it 'checks for horizontal_win' do
      


    end
  end


end