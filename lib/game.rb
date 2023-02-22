class Game
  attr_reader :board
  def initialize
    @board = Board.new
  end
  
  def verticle_win
    column_string = []
    @board.columns.values.each do |column|
      column_string << column.join
    end
    return column_string
  end

  def horizontal_win
    row_string = []
    @board.cells.each do |row|
      row_value_array = []
      row.each do |cell|
        row_value_array << cell.value
      end
      row_string << row_value_array.join
    end
    return row_string
  end
  


  # def tie
  #   board.map(&:last).none? { |cell| cell == '.' }
  # end
  
  
  # def who_wins(strings) 
  #   if string.include?("xxxx")
  #     puts "Player wins!"
  #   elseif string.include?("oooo") 
  #     puts "Computer Wins"
  #   end
  # end
end