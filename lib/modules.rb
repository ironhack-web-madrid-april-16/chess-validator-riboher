require 'pry'

module Linear_movable
  def move_linear(target_position)
    @origin[0] == target_position[0] || @origin[1] == target_position[1] ? @movable = true : @movable
  end
end

module Diagonal_movable
   def move_diagonal(target_position)
    if @origin[0] > target_position[0] && @origin[1] < target_position[1]

      @origin[0] - target_position[0] == @origin[1] + target_position[1] ? @movable = true : @movable

    elsif @origin[0] > target_position[0] && @origin[1] > target_position[1] ||
          @origin[0] < target_position[0] && @origin[1] < target_position[1] ||
          @origin[0] < target_position[0] && @origin[1] > target_position[1]

          @origin[0] - target_position[0] == @origin[1] - target_position[1] ? @movable = true : @movable
    end
    @movable
  end
end

module Linear_movable_by_one
  def move_one_linear(target_position)
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

module L_movement
  def movement_l(target_position)
    # binding.pry
    if target_position[0] == @origin[0] + 1 || target_position[0] == @origin[0] - 1
      if target_position[1] == @origin[1] + 2 || target_position[1] == @origin[1] - 2
        @movable = true
        # binding.pry
      end
    elsif target_position[0] == @origin[0] + 2 || target_position[0] == @origin[0] - 2
      if target_position[1] == @origin[1] + 1 || target_position[1] == @origin[1] - 1
        @movable = true
        # binding.pry
      end
    end
  end
  @movable
end

module Forward_one
  def move_forward_from_bottom(target_position)
    # binding.pry
    if target_position[1] == @origin[1] && (target_position[0] == @origin[0] - 1 || target_position[0] == @origin[0] - 2)
      @movable = true
      # binding.pry
    end
    @movable
  end

  def move_forward_from_top(target_position)
    # binding.pry
    if target_position[1] == @origin[1] && (target_position[0] == @origin[0] + 1 || target_position[1] == @origin[1] + 2)
      @movable = true
    end
    @movable
  end
end
