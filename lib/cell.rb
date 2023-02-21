class Cell
  attr_reader :column,
              :row
  attr_accessor :value
  def initialize(column, row)
    @column = column
    @row = row
    @value = "."
  end

  ## Might use these methods when refactoring code later.
  # def value
  #   @value
  # end

  # def set_value(value)
  #   @value = value
  # end

end