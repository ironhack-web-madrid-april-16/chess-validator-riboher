require './Piece.rb'
require './Modules.rb'

class Rook < Piece
  include Linear_movable
  def initialize(origin,color)
    super(origin,color)
  end

  def check_move(target_position)
    if move_linear(@origin,target_position)
      puts "LEGAL"
    else
      puts "ILLEGAL"
    end
  end
end
