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
    it 'has prompt for main_menu' do
      expect(board.main_menu).to eq(false)
    end
    it 'can print board' do
      expect(board.print_board).to eq(nil)
    end
  end

  describe 'Adding pieces to the board' do
    it 'can add a chip to the correct column' do
      expect(board.cells[5][0].value).to eq(".")
      board.cells[5][0].value = "x"
      board.cells[5][4].value = "x"
      expect(board.cells[5][4].value).to eq("x")
    end

    it 'can show chip' do
      board.add_chip("player")
    end

    it 'will put chip above last placed chip (gravity)' do
      expect(board.cells[5][0].value).to eq(".")
      board.cells[5][0].value = "x"
      board.cells[4][0].value = "x"
      expect(board.cells[5][0].value).to eq("x")
      expect(board.cells[4][0].value).to eq("x")
    end
  end

  describe 'adding total moves' do
    it 'can add total moves' do
      expect(board.add_columns).to eq(0)
    end
  end
end