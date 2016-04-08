require './modules.rb'
require './Queen.rb'
require './Rook.rb'
require './Bishop.rb'

chessboard = [
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil],
  [nil,nil,nil,nil,nil,nil,nil,nil]
]




wR = Rook.new([0,0],"white")
wB = Bishop.new([2,0],"white")
wQ = Queen.new([4,7],"white")
#chessboard[0][0] = wR

wR.check_move([5,0])
wB.check_move([5,3])
wQ.check_move([0,3])

