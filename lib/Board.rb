class Board

  $board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  $winning_move = false
  $str = ''

  def display_demo_board
    puts '             .-----.-----.-----.'
    puts '             |  X  |  O  |  X  |'
    puts '             .-----+-----+-----.'
    puts '             |  O  |  X  |  O  |'
    puts '             .-----+-----+-----.'
    puts '             |  X  |  O  |     |'
    puts '             .-----.-----.-----.'
  end

  def numbered_board
    puts '             .-----.-----.-----.'
    puts "             |  1  |  2  |  3  |"
    puts '             .-----+-----+-----.'
    puts "             |  4  |  5  |  6  |"
    puts '             .-----+-----+-----.'
    puts "             |  7  |  8  |  9  |"
    puts '             .-----.-----.-----.'
  end

  def board_choice_display
    puts '      .-----.-----.-----.      .-----.-----.-----.'
    puts "      |  1  |  2  |  3  |      |  #{$board[0]}  |  #{$board[1]}  |  #{$board[2]}  |"
    puts '      .-----+-----+-----.      .-----+-----+-----.'
    puts "      |  4  |  5  |  6  | ==>> |  #{$board[3]}  |  #{$board[4]}  |  #{$board[5]}  |"
    puts '      .-----+-----+-----.      .-----+-----+-----.'
    puts "      |  7  |  8  |  9  |      |  #{$board[6]}  |  #{$board[7]}  |  #{$board[8]}  |"
    puts '      .-----.-----.-----.      .-----.-----.-----.'
  end

  def determine_winner
    if $board[0] != ' ' && $board[1] != ' ' && $board[2] != ' ' && $board[0] == $board[1] && $board[1] == $board[2] # 1 2 3
      $winning_move = true
    elsif $board[0] != ' ' && $board[4] != ' ' && $board[8] != ' ' && $board[0] == $board[4] && $board[4] == $board[8] # 1 5 9
      $winning_move = true
    elsif $board[0] != ' ' && $board[3] != ' ' && $board[6] != ' ' && $board[0] == $board[3] && $board[3] == $board[6] # 1 4 7
        $winning_move = true
    elsif $board[1] != ' ' && $board[4] != ' ' && $board[7] != ' ' && $board[1] == $board[4] && $board[4] == $board[7] # 2 5 8
        $winning_move = true
    elsif $board[2] != ' ' && $board[4] != ' ' && $board[6] != ' ' && $board[2] == $board[4] && $board[4] == $board[6] # 3 5 7
        $winning_move = true
    elsif $board[2] != ' ' && $board[5] != ' ' && $board[8] != ' ' && $board[2] == $board[5] && $board[5] == $board[8] # 3 6 9
        $winning_move = true 
    elsif $board[3] != ' ' && $board[4] != ' ' && $board[5] != ' ' && $board[3] == $board[4] && $board[4] == $board[5] # 4 5 6
        $winning_move = true
    elsif $board[6] != ' ' && $board[7] != ' ' && $board[8] != ' ' && $board[6] == $board[7] && $board[7] == $board[8] # 7 8 9
        $winning_move = true
    end
  end

  def print_results
    sleep(3)
    puts "\n\n\n"
    print '        ====='
    print '='*$str.length
    print "=====\n"
    print '        *    '
    print ' '*$str.length
    print "    *\n"
    puts "        *    #{$str}    *"
    print '        *    '
    print ' '*$str.length
    print "    *\n"
    print "        ====="
    print '='*$str.length
    print "=====\n\n"
    puts "             Thanks For Playing!\n\n"
  end

end