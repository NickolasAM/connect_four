require 'spec_helper'

RSpec.describe Board do
  let(:board) {Board.new}

  it 'exists' do
    expect(board).to be_an_instance_of(Board)
  end

  describe '#has attributes' do
    it "has cells" do
      expect(board.cells).to be_an_instance_of(Hash)
    end





  end



end