require './Piece.rb'
require './Modules.rb'

class Bishop < Piece
  include Diagonal_movable
  def initialize(origin)
    @origin = origin
    @movable = false
  end
  def check_move(target_position)
    if move_diagonal(target_position)
      puts "LEGAL"
    else
      puts "ILLEGAL"
    end
  end
end
