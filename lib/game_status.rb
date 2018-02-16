# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =  [
  [0,1,2], #row 1
  [3,4,5], #row 2
  [6,7,8], #row 3
  [2,4,6], #diagonal 2
  [0,4,8], #diagonal 1
  [0,3,6], #column 1
  [1,4,7], #column 2
  [2,5,8], #column 3
]
  
#FULL BOARD CODE
def full?(board)
  !(board.any? {|slot| slot == " " || slot == ""})
end

#WON CODE
def won?(board)
  
  winning_move = nil
  
  WIN_COMBINATIONS.each do |move_win|
    position_1 = move_win[0]
    position_2 = move_win[1]
    position_3 = move_win[2]
    
    if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
      winning_move = move_win
    elsif board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
      winning_move = move_win
    end
  end
  winning_move
end

<<<<<<< HEAD
=======
board = ["X","X","X"]
won?(board)

>>>>>>> 78a3b25c8d5c1362b5fe3862ba7080470eb55722
#DRAW CODE
def draw?(board)
  full?(board) && !won?(board)
end

#OVER CODE
def over?(board)
<<<<<<< HEAD
  won?(board) || draw?(board) || full?(board)  || turn_count(board) == 9
=======
  won?(board) || draw?(board) || !full?(board)
>>>>>>> 78a3b25c8d5c1362b5fe3862ba7080470eb55722
end

#WINNER CODE
def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end

#turn count
def turn_count(board)
<<<<<<< HEAD
  board.count{|x| x !=" "}
end
=======
  board.count(|x| x !=" ")
end
  
>>>>>>> 78a3b25c8d5c1362b5fe3862ba7080470eb55722
