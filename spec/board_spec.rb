require 'spec_helper'

RSpec.describe Board do
  let(:board) {Board.new}

  it 'exists' do
    expect(board).to be_an_instance_of(Board)
  end

  describe '#has attributes' do
    it 'has cells' do
      expect(board.cells).to be_a Array
    end

    it 'has columns' do
      expect(board.columns).to be_a Hash
    end
  end

  describe '#prints board' do
    it 'can render board' do
      expect(board.render_board).to be_a Array
    end

    it 'can print board' do
      board.print_board
      require 'pry'; binding.pry
      expect(board.print_board).to eq false
    end
  end
end