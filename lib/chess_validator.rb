require './modules.rb'
require './Queen.rb'
require './Rook.rb'
require './Bishop.rb'
require './King.rb'
require './Knight.rb'
require './Pawn.rb'
require './Board.rb'
require 'pry'


# list_of_moves = [
#   ["0,6 0,5"],
#   ["0,6 0,4"],
#   ["0,6 0,3"],
#   ["0,1 0,2"],
#   ["0,1 0,3"],
#   ["0,1 0,4"],
#   ["0,1 1,2"],
#   ["1,0 0,2"],
#   ["1,0 2,2"],
#   ["1,0 3,1"],
#   ["4,6 4,5"],
#   ["4,5 4,6"]
# ]

list_of_moves = [
  [[6,0],[5,0]],
  [[6,0],[4,0]],
  [[6,0],[3,0]],
  [[1,0],[2,0]],
  [[1,0],[3,0]],
  [[1,0],[4,0]],
  [[1,0],[2,1]],
  [[0,1],[2,0]],
  [[0,1],[2,2]],
  [[0,1],[1,3]],
  [[6,4],[5,4]],
  [[5,4],[6,4]]
]



# moves_arr = list_of_moves.map do |cut|
#    cut.join.split(" ").each_slice(1).to_a
# end

# new_arr = moves_arr.map do |single|
#   single.map do |subdiv|
#     subdiv.join(",").split(",")
#   end
# end

# new_arr.each do |cell|
#   print cell
# end

#print list_of_moves[0][1]
#print moves_arr

#print list_of_moves[0][0]

chessboard = Board.new
chessboard.fill_grid("simple-board.txt")

# puts chessboard.check_position([6,0]) #wP
# puts chessboard.check_position([1,0]) #bP
# puts chessboard.check_position([0,1]) #bN
# puts chessboard.check_position([6,4]) #wP
# puts chessboard.check_position([5,4]) #--


# Pawn.new(list_of_moves[0][0],"white").check_move(list_of_moves[0][1])

list_of_moves.each_with_index do |origin,index|
  piece = chessboard.check_position(list_of_moves[index][0])
  case piece
  when :bN
    # binding.pry
    Knight.new(list_of_moves[index][0],"black").check_move(list_of_moves[index][1])
  when :wN
    # binding.pry
    Knight.new(list_of_moves[index][0],"white").check_move(list_of_moves[index][1])
  when :bP
    # binding.pry
    Pawn.new(list_of_moves[index][0],"black").check_move(list_of_moves[index][1])
  when :wP
    # binding.pry
    Pawn.new(list_of_moves[index][0],"white").check_move(list_of_moves[index][1])
  end
end


