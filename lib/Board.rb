require './IOtool.rb'

class Board
  def initialize
    @grid = []
  end

  def check_position(pos)
    puts @grid[pos[0]][pos[1]]
  end

  def fill_grid(file)
    chess_text = IO.new.read_file(file).split(" ")
    @grid = chess_text.each_slice(8).to_a
    @grid
  end
end
