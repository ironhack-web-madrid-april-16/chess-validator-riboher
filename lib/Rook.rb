require './Piece.rb'
require './Modules.rb'

class Rook < Piece
  include Linear_movable
  def initialize(origin)
    @origin = origin
    @movable = false
  end

  def check_move(target_position)
    if move_linear(target_position)
      puts "LEGAL"
    else
      puts "ILLEGAL"
    end
  end
end
