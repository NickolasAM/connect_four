class Game

  def initialize
    @boards = Board.new
  end

  
  def vertical_win
    v_w = @board.columns.count_left + @board.columns.count_right >= 3

  end

  def horizontal_win
    require'pry';binding.pry
    h_w = @cellsrow.count_left + row.count_right >= 3 # 4 including the current cell
  end

  def player_verticle_win
    column_string = []
    @board.columns.values.each do |column|
      column_string << column.join
    end
    return column_string
  end
  # def tie
  #   board.map(&:last).none? { |cell| cell == '.' }
  # end
  
  # def win
  #   horizontal_win || vertical_win || tie_win
  # end
  
  def who_wins(strings) 
    if string.include?("xxxx")
      puts "Player wins!"
    elseif string.include?("oooo") 
      puts "Computer Wins"
    end
  end
end