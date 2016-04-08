require './Modules.rb'
require './Piece.rb'

class King < Piece
  include Linear_movable_by_one
  def initialize(origin,color)
    super(origin,color)
  end

  def check_move(target_position)
    if move_one_linear(@origin,target_position)
      puts "LEGAL"
    else
      puts "ILLEGAL"
    end
  end
end
