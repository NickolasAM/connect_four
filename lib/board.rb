class Board
  attr_reader :cells,
              :columns

  def initialize
    @cells = [
      [Cell.new("A", 6), Cell.new("B", 6), Cell.new("C", 6), Cell.new("D", 6), Cell.new("E", 6), Cell.new("F", 6), Cell.new("G", 6)],
      [Cell.new("A", 5), Cell.new("B", 5), Cell.new("C", 5), Cell.new("D", 5), Cell.new("E", 5), Cell.new("F", 5), Cell.new("G", 5)],
      [Cell.new("A", 4), Cell.new("B", 4), Cell.new("C", 4), Cell.new("D", 4), Cell.new("E", 4), Cell.new("F", 4), Cell.new("G", 4)],
      [Cell.new("A", 3), Cell.new("B", 3), Cell.new("C", 3), Cell.new("D", 3), Cell.new("E", 3), Cell.new("F", 3), Cell.new("G", 3)],
      [Cell.new("A", 2), Cell.new("B", 2), Cell.new("C", 2), Cell.new("D", 2), Cell.new("E", 2), Cell.new("F", 2), Cell.new("G", 2)],
      [Cell.new("A", 1), Cell.new("B", 1), Cell.new("C", 1), Cell.new("D", 1), Cell.new("E", 1), Cell.new("F", 1), Cell.new("G", 1)]
    ]
    @columns = {"A" => [], "B" => [], "C" => [], "D" => [], "E" => [], "F" => [], "G" => []}
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
      @columns["A"] << Chip.new.type[user]
      @cells[5][0].value = columns["A"][0]
      render_board
      print_board
    end
    if location == "B"
      @columns["B"] << Chip.new.type[user]
      @cells[5][1].value = columns["B"][0]
      render_board
      print_board
    end
    if location == "C"
      @columns["C"] << Chip.new.type[user]
      @cells[5][2].value = columns["C"][0]
      render_board
      print_board
    end
    if location == "D"
      @columns["D"] << Chip.new.type[user]
      @cells[5][3].value = columns["D"][0]
      render_board
      print_board
    end
    if location == "E"
      @columns["E"] << Chip.new.type[user]
      @cells[5][4].value = columns["E"][0]
      render_board
      print_board
    end
    if location == "F"
      @columns["F"] << Chip.new.type[user]
      @cells[5][5].value = columns["F"][0]
      render_board
      print_board
    end
    if location == "G"
      @columns["G"] << Chip.new.type[user]
      @cells[5][6].value = columns["G"][0]
      render_board
      print_board
    end
    return false
  end
  
end