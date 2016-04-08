require './Modules.rb'
require './Piece.rb'

class Queen < Piece
  include Linear_movable
  include Diagonal_movable
  def initialize(origin,color)
    super(origin,color)
  end

  def check_move(target_position)
    if move_linear(@origin,target_position) || move_diagonal(@origin,target_position)
      puts "LEGAL"
    else
      puts "ILLEGAL"
    end
  end
end
