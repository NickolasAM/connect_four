class Board
  attr_reader :cells,
              :columns,
              :diagonals

  def initialize
    @cells = [
      [Cell.new("A", 6), Cell.new("B", 6), Cell.new("C", 6), Cell.new("D", 6), Cell.new("E", 6), Cell.new("F", 6), Cell.new("G", 6)],
      [Cell.new("A", 5), Cell.new("B", 5), Cell.new("C", 5), Cell.new("D", 5), Cell.new("E", 5), Cell.new("F", 5), Cell.new("G", 5)],
      [Cell.new("A", 4), Cell.new("B", 4), Cell.new("C", 4), Cell.new("D", 4), Cell.new("E", 4), Cell.new("F", 4), Cell.new("G", 4)],
      [Cell.new("A", 3), Cell.new("B", 3), Cell.new("C", 3), Cell.new("D", 3), Cell.new("E", 3), Cell.new("F", 3), Cell.new("G", 3)],
      [Cell.new("A", 2), Cell.new("B", 2), Cell.new("C", 2), Cell.new("D", 2), Cell.new("E", 2), Cell.new("F", 2), Cell.new("G", 2)],
      [Cell.new("A", 1), Cell.new("B", 1), Cell.new("C", 1), Cell.new("D", 1), Cell.new("E", 1), Cell.new("F", 1), Cell.new("G", 1)]
    ]
    @diagonals = [
      [cells[2][0], cells[3][1], cells[4][2], cells[5][3]],
      [cells[1][0], cells[2][1], cells[3][2], cells[4][3], cells[5][4]], 
      [cells[0][0], cells[1][1], cells[2][2], cells[3][3], cells[4][4], cells[5][5]], 
      [cells[0][1], cells[1][2], cells[2][3], cells[3][4], cells[4][5], cells[5][6]],
      [cells[0][2], cells[1][3], cells[2][4], cells[3][5], cells[4][6]],
      [cells[0][3], cells[1][4], cells[2][5], cells[3][6]],
      [cells[3][0], cells[2][1], cells[1][2], cells[0][3]],
      [cells[4][0], cells[3][1], cells[2][2], cells[1][3], cells[0][4]],
      [cells[5][0], cells[4][1], cells[3][2], cells[2][3], cells[1][4], cells[0][5]],
      [cells[5][1], cells[4][2], cells[3][3], cells[2][4], cells[1][5], cells[0][6]],
      [cells[5][2], cells[4][3], cells[3][4], cells[2][5], cells[1][6]],
      [cells[5][3], cells[4][4], cells[3][5], cells[2][6]]
    ]
    @columns = {"A" => [], "B" => [], "C" => [], "D" => [], "E" => [], "F" => [], "G" => []}
  end

  def add_columns
    total_moves = 0
    @columns.values.each do |column|   
      total_moves += column.count
    end
    return total_moves
  end

  def render_board
    @cells.map do |array|
      array.map do |cell|
        cell.value
      end
    end
  end

  def print_board
    render_board
    puts "ABCDEFG"
    puts "#{render_board[0].join}"
    puts "#{render_board[1].join}"
    puts "#{render_board[2].join}"
    puts "#{render_board[3].join}"
    puts "#{render_board[4].join}"
    puts "#{render_board[5].join}"
  end

  def main_menu
    puts "Welcome to Connect4!" #Add ASCCI Art
    puts "Press P to play Connect4, Press Q to quit"
    start = gets.chomp.upcase
    if start == "P"
      print_board
    elsif start == "Q"
      puts "OK, Have A Nice Day!"
    end
    return false
  end


  def add_chip(user) 
    puts "what column do you want your piece in?"
    location = "#{gets.chomp.upcase}"
    if location == "A"
      gravity = -1
      @columns["A"] << Chip.new.type[user]
      gravity += @columns["A"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][0].value = columns["A"].last
      render_board
      print_board
    end
    if location == "B"
      gravity = -1
      @columns["B"] << Chip.new.type[user]
      gravity += @columns["B"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][1].value = columns["B"].last
      render_board
      print_board
    end
    if location == "C"
      gravity = -1
      @columns["C"] << Chip.new.type[user]
      gravity += @columns["C"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][2].value = columns["C"].last
      render_board
      print_board
    end
    if location == "D"
      gravity = -1
      @columns["D"] << Chip.new.type[user]
      gravity += @columns["D"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][3].value = columns["D"].last
      render_board
      print_board
    end
    if location == "E"
      gravity = -1
      @columns["E"] << Chip.new.type[user]
      gravity += @columns["E"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][4].value = columns["E"].last
      render_board
      print_board
    end
    if location == "F"
      gravity = -1
      @columns["F"] << Chip.new.type[user]
      gravity += @columns["F"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][5].value = columns["F"].last
      render_board
      print_board
    end
    if location == "G"
      gravity = -1
      @columns["G"] << Chip.new.type[user]
      gravity += @columns["G"].count
      if gravity > 5 
        return puts "Choose another coulumn!"
      end
      @cells[5 - gravity][6].value = columns["G"].last
      render_board
      print_board
    end
    return false
  end
  
end