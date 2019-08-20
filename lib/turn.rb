

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
 index=input.to_i - 1
end

def update_array_at_with(array, index, value)
  array[index.to_i]=value
  return array
end

def move(board, index, value="X")
  update_array_at_with(board, index, value)
end

# code your #valid_move? method here
def valid_move?(board,index)
  if index.between?(0,8)== true && position_taken?(board,index)==false
    return true
  else
    index.between?(0,8)==false || position_taken?(board,index)== true
    return false
  end
end



def position_taken?(board,index)
  if board[index]== "" || board[index]== " " || board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board,index)
    puts display_board(board)

  elsif valid_move?(board,index) == false
    puts "Please enter 1-9:"
    input= gets.strip

  end

end
