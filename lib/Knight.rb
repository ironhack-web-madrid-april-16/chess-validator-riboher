require './Modules.rb'
require './Piece.rb'

class Knight < Piece
  include L_movement
  def initialize(origin,color)
    super(origin,color)
  end

  def check_move(target_position)
    # binding.pry
    if movement_l(target_position)
      # binding.pry
      puts "LEGAL"
    else
      # binding.pry
      puts "ILLEGAL"
    end
  end
end
