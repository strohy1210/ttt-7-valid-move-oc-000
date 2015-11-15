# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position)
    false
  elsif position < 9 && position >= 0
    true
  else
    false
  end
    
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if !board.empty? && board[position] && (board[position].include?("X") || board[position].include?("O"))
    true
  else
    false
  end
end