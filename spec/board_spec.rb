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



end