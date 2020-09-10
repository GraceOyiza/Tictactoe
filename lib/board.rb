class Board
  $board_ar = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
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
    puts '             |  1  |  2  |  3  |'
    puts '             .-----+-----+-----.'
    puts '             |  4  |  5  |  6  |'
    puts '             .-----+-----+-----.'
    puts '             |  7  |  8  |  9  |'
    puts '             .-----.-----.-----.'
  end

  def board_choice_display
    puts '      .-----.-----.-----.      .-----.-----.-----.'
    puts "      |  1  |  2  |  3  |      |  #{$board_ar[0]}  |  #{$board_ar[1]}  |  #{$board_ar[2]}  |"
    puts '      .-----+-----+-----.      .-----+-----+-----.'
    puts "      |  4  |  5  |  6  | ==>> |  #{$board_ar[3]}  |  #{$board_ar[4]}  |  #{$board_ar[5]}  |"
    puts '      .-----+-----+-----.      .-----+-----+-----.'
    puts "      |  7  |  8  |  9  |      |  #{$board_ar[6]}  |  #{$board_ar[7]}  |  #{$board_ar[8]}  |"
    puts '      .-----.-----.-----.      .-----.-----.-----.'
  end

  def determine_winner
    if $board_ar[0] != ' ' && $board_ar[1] != ' ' && $board_ar[2] != ' ' && $board_ar[0] == $board_ar[1] && $board_ar[1] == $board_ar[2]
      $winning_move = true
    elsif $board_ar[0] != ' ' && $board_ar[4] != ' ' && $board_ar[8] != ' ' && $board_ar[0] == $board_ar[4] && $board_ar[4] == $board_ar[8]
      $winning_move = true
    elsif $board_ar[0] != ' ' && $board_ar[3] != ' ' && $board_ar[6] != ' ' && $board_ar[0] == $board_ar[3] && $board_ar[3] == $board_ar[6]
      $winning_move = true
    elsif $board_ar[1] != ' ' && $board_ar[4] != ' ' && $board_ar[7] != ' ' && $board_ar[1] == $board_ar[4] && $board_ar[4] == $board_ar[7]
      $winning_move = true
    elsif $board_ar[2] != ' ' && $board_ar[4] != ' ' && $board_ar[6] != ' ' && $board_ar[2] == $board_ar[4] && $board_ar[4] == $board_ar[6]
      $winning_move = true
    elsif $board_ar[2] != ' ' && $board_ar[5] != ' ' && $board_ar[8] != ' ' && $board_ar[2] == $board_ar[5] && $board_ar[5] == $board_ar[8]
      $winning_move = true
    elsif $board_ar[3] != ' ' && $board_ar[4] != ' ' && $board_ar[5] != ' ' && $board_ar[3] == $board_ar[4] && $board_ar[4] == $board_ar[5]
      $winning_move = true
    elsif $board_ar[6] != ' ' && $board_ar[7] != ' ' && $board_ar[8] != ' ' && $board_ar[6] == $board_ar[7] && $board_ar[7] == $board_ar[8]
      $winning_move = true
    end
  end

  def print_results
    sleep(1)
    puts "\n\n\n"
    print '        ====='
    print '=' * $str.length
    print "=====\n"
    print '        *    '
    print ' ' * $str.length
    print "    *\n"
    puts "        *    #{$str}    *"
    print '        *    '
    print ' ' * $str.length
    print "    *\n"
    print '        ====='
    print '=' * $str.length
    print "=====\n\n"
    puts "             Thanks For Playing!\n\n"
  end
end
