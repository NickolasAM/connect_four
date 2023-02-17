class Cell
  attr_reader :column,
              :row,
              :value
  def initialize(column, row)
    @column = column
    @row = row
    @value = "."
  end



end