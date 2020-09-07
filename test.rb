$board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

if $board[0] != ' ' && $board[1] != ' ' && $board[2] != ' ' # 1 2 3
  if $board[0] == $board[1] && $board[1] == $board[2]
    return true
  end
elsif $board[0] != ' ' && $board[4] != ' ' && $board[8] != ' ' # 1 5 9
  if $board[0] == $board[4] && $board[4] == $board[8]
    return true
  end
elsif $board[0] != ' ' && $board[3] != ' ' && $board[6] != ' ' # 1 4 7
  if $board[0] == $board[3] && $board[3] == $board[6]
    return true
  end
elsif $board[1] != ' ' && $board[4] != ' ' && $board[7] != ' ' # 2 5 8
  if $board[1] == $board[4] && $board[4] == $board[7]
    return true
  end
elsif $board[2] != ' ' && $board[4] != ' ' && $board[6] != ' ' # 3 5 7
  if $board[2] == $board[4] && $board[4] == $board[6]
    return true
  end
elsif $board[3] != ' ' && $board[6] != ' ' && $board[8] != ' ' # 3 6 9
  if $board[3] == $board[6] && $board[6] == $board[8]
    return true
  end
elsif $board[3] != ' ' && $board[4] != ' ' && $board[5] != ' ' # 4 5 6
  if $board[3] == $board[4] && $board[4] == $board[5]
    return true
  end
elsif $board[6] != ' ' && $board[7] != ' ' && $board[8] != ' ' # 7 8 9
  if $board[6] == $board[7] && $board[7] == $board[8]
    return true
  end
end

  def display_demo_board
    puts '             .-----.-----.-----.'
    puts '             |  0  |  1  |  2  |'
    puts '             .-----+-----+-----.'
    puts '             |  3  |  4  |  5  |'
    puts '             .-----+-----+-----.'
    puts '             |  6  |  7  |  8  |'
    puts '             .-----.-----.-----.'
  end