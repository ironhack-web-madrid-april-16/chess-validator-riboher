require './Modules.rb'
require './Piece.rb'

class Knight < Piece
  include L_movement
  def initialize(origin,color)
    super(origin,color)
  end

  def check_move(target_position)
    if l_movable(@origin,target_position)
      puts "LEGAL"
    else
      puts "ILLEGAL"
    end
  end
end
