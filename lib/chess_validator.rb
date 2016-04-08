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




wR = Rook.new([0,0])
wB = Bishop.new([2,0])
wQ = Queen.new([4,7])
#chessboard[0][0] = wR

wR.check_move([5,0])
wB.check_move([5,3])
wQ.check_move([0,3])

