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
  
  def diagonal_win
    diagonal_string = []
    @board.diagonals.each do |diagonal|
      diagonal_value_array = []
      diagonal.each do |cell|
        diagonal_value_array << cell.value
      end
      diagonal_string << diagonal_value_array.join
    end
    return diagonal_string
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
    diagonal_win.each do |diagonal|
      if diagonal.include?("xxxx")
        puts "Player wins!"
        return true
      end
      if diagonal.include?("oooo")
        puts "Computer wins!"
        return true
      end
    end
  end

  def start_game
    if @board.main_menu == false
      return "Ok have a nice day"
    end
    while @board.add_columns < 42 do
      if check_win == true
        break
      end
      @board.add_chip("player")
      system('clear')
      @board.add_chip("computer")
    end
  end
end