module Linear_movable
  def move_linear(target_position)
    if @origin[0] == target_position[0] || @origin[1] == target_position[1]
      @movable = true
    end
    @movable
  end
end

module Diagonal_movable
   def move_diagonal(target_position)
    if @origin[0] > target_position[0] && @origin[1] < target_position[1]
      if @origin[0] - target_position[0] == @origin[1] + target_position[1]
        @movable = true
      end
    elsif @origin[0] > target_position[0] && @origin[1] > target_position[1] ||
          @origin[0] < target_position[0] && @origin[1] < target_position[1] ||
          @origin[0] < target_position[0] && @origin[1] > target_position[1]
      if @origin[0] - target_position[0] == @origin[1] - target_position[1]
        @movable = true
      end
    end
    @movable
  end
end
