require './IOtool.rb'
require 'pry'
class Board
  def initialize
    @grid = []
  end

  def check_position(pos)
    #binding.pry
    @grid[pos[0]][pos[1]].to_sym
  end

  def fill_grid(file)
    chess_text = IO.new.read_file(file).split(" ")
    @grid = chess_text.each_slice(8).to_a
    @grid
  end
end
