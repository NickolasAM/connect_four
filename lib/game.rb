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

  def check_win
    horizontal_win.each do |row|
      if row.include?("xxxx")
        puts "Player wins!"
        return true
      end
      if row.include?("oooo")
        puts "Computer wins!"
        return true
      end
    end
    verticle_win.each do |column|
      if column.include?("xxxx")
        puts "Player wins!"
        return true
      end
      if column.include?("oooo")
        puts "Computer wins!"
        return true
      end
    end
  end
  # require 'pry'; binding.pry

#   def game
#     @board.main_menu
#     while @board.add_columns < 42 do
#       if check_win == true
#         break
#       end
#       @board.add_chip("player")
#       @board.add_chip("computer")
#     end
#   end
end