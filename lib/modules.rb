require 'pry'

module Linear_movable
  def move_linear(origin,target_position)
    if @origin[0] == target_position[0] || @origin[1] == target_position[1]
      @movable = true
    end
    @movable
  end
end

module Diagonal_movable
   def move_diagonal(origin,target_position)
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

module Linear_movable_by_one
  def move_one_linear(origin,target_position)
    if @origin[0] == target_position[0]
      if target_position[1] == @origin[1] + 1 || target_position[1] == @origin[1] - 1
        @movable = true
      end
    elsif @origin[1] == target_position[1]
      if target_position[0] == @origin[0] + 1 || target_position[0] == @origin[0] - 1
        @movable = true
      end
    end
    @movable
  end
end
