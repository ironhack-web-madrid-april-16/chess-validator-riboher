require './Modules.rb'
require './Piece.rb'

class Pawn < Piece
  include Forward_one
  def initialize(origin,color)
    super(origin,color)
  end

  def check_move(target_position)
    case @color
    when "white"
      if move_forward_from_bottom(target_position)
        puts "LEGAL"
      else
        puts "ILLEGAL"
      end
    when "black"
      if move_forward_from_top(target_position)
        puts "LEGAL"
      else
        puts "ILLEGAL"
      end
    end
  end
end
