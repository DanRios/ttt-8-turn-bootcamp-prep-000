puts "Welcome to Tic Tac Toe!"
board = Array.new(9){" "}
puts "Where would you like to go?"
input = gets.strip
index = input_to_index(input)
move(board,index)
display_board(board)


board = [" ", " ", " "," ", " ", " ", " ", " ", " "]

def display_board(move = board)
  puts " #{move[0]} | #{move[1]} | #{move[2]} "
  puts "-----------"
  puts " #{move[3]} | #{move[4]} | #{move[5]} "
  puts "-----------"
  puts " #{move[6]} | #{move[7]} | #{move[8]} "
end

def valid_move?(board,index)
if index.between?(0, 8) && !position_taken?(board,index)
  return true
else index > 9 || position_taken?(board,index)
  return nil
end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
  end
end
