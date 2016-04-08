require './modules.rb'
require './Queen.rb'
require './Rook.rb'
require './Bishop.rb'
require './King.rb'
require './Knight.rb'
require './Pawn.rb'
require './Board.rb'
require 'pry'


chessboard = Board.new
chessboard.fill_grid("simple-board.txt")
chessboard.check_position([0,2])

# moves = IO.read("simple-moves.txt").split("\n")
# chessboard = chessboard.map { |piece| piece.to_sym }



# wR = Rook.new([0,0],"white")
# wB = Bishop.new([2,0],"white")
# wQ = Queen.new([4,7],"white")
# wK = King.new([3,4],"white")
# wN = Knight.new([3,4],"white")
# wP1 = Pawn.new([0,6],"white")
# wP2 = Pawn.new([1,6],"white")
# wP3 = Pawn.new([2,6],"white")
# wP4 = Pawn.new([3,6],"white")
# wP5 = Pawn.new([4,6],"white")
# wP6 = Pawn.new([5,6],"white")
# wP7 = Pawn.new([6,6],"white")
# wP8 = Pawn.new([7,6],"black")


