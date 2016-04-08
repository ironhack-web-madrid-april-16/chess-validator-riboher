require './modules.rb'
require './Queen.rb'
require './Rook.rb'
require './Bishop.rb'
require './King.rb'
require './Knight.rb'
require './Pawn.rb'

# chessboard = [
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil],
#   [nil,nil,nil,nil,nil,nil,nil,nil]
# ]




# wR = Rook.new([0,0],"white")
# wB = Bishop.new([2,0],"white")
# wQ = Queen.new([4,7],"white")
# wK = King.new([3,4],"white")
# wN = Knight.new([3,4],"white")
wP1 = Pawn.new([0,6],"white")
wP2 = Pawn.new([1,6],"white")
wP3 = Pawn.new([2,6],"white")
wP4 = Pawn.new([3,6],"white")
wP5 = Pawn.new([4,6],"white")
wP6 = Pawn.new([5,6],"white")
wP7 = Pawn.new([6,6],"white")
wP8 = Pawn.new([7,6],"black")

# wR.check_move([5,0])
# wB.check_move([5,3])
# wQ.check_move([0,3])
# wN.check_move([4,2])
# wN.check_move([5,3])
# wN.check_move([5,5])
# wN.check_move([4,6])
# wN.check_move([2,6])
# wN.check_move([1,5])
# wN.check_move([1,3])
# wN.check_move([2,2])

