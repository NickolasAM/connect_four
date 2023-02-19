class Chip
  attr_reader :type
            
  def initialize
    @type = {"player" => "x", "computer" => "o"}
    # require 'pry'; binding.pry
  end
end


