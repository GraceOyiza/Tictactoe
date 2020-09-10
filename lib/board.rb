class Board
  $b_ar = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
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

  def display_numbered_board
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
    puts "      |  1  |  2  |  3  |      |  #{$b_ar[0]}  |  #{$b_ar[1]}  |  #{$b_ar[2]}  |"
    puts '      .-----+-----+-----.      .-----+-----+-----.'
    puts "      |  4  |  5  |  6  | ==>> |  #{$b_ar[3]}  |  #{$b_ar[4]}  |  #{$b_ar[5]}  |"
    puts '      .-----+-----+-----.      .-----+-----+-----.'
    puts "      |  7  |  8  |  9  |      |  #{$b_ar[6]}  |  #{$b_ar[7]}  |  #{$b_ar[8]}  |"
    puts '      .-----.-----.-----.      .-----.-----.-----.'
  end

  def determine_winner
    if $b_ar[0] != ' ' && $b_ar[1] != ' ' && $b_ar[2] != ' ' && $b_ar[0] == $b_ar[1] && $b_ar[1] == $b_ar[2]
      $winning_move = true
    elsif $b_ar[0] != ' ' && $b_ar[4] != ' ' && $b_ar[8] != ' ' && $b_ar[0] == $b_ar[4] && $b_ar[4] == $b_ar[8]
      $winning_move = true
    elsif $b_ar[0] != ' ' && $b_ar[3] != ' ' && $b_ar[6] != ' ' && $b_ar[0] == $b_ar[3] && $b_ar[3] == $b_ar[6]
      $winning_move = true
    elsif $b_ar[1] != ' ' && $b_ar[4] != ' ' && $b_ar[7] != ' ' && $b_ar[1] == $b_ar[4] && $b_ar[4] == $b_ar[7]
      $winning_move = true
    elsif $b_ar[2] != ' ' && $b_ar[4] != ' ' && $b_ar[6] != ' ' && $b_ar[2] == $b_ar[4] && $b_ar[4] == $b_ar[6]
      $winning_move = true
    elsif $b_ar[2] != ' ' && $b_ar[5] != ' ' && $b_ar[8] != ' ' && $b_ar[2] == $b_ar[5] && $b_ar[5] == $b_ar[8]
      $winning_move = true
    elsif $b_ar[3] != ' ' && $b_ar[4] != ' ' && $b_ar[5] != ' ' && $b_ar[3] == $b_ar[4] && $b_ar[4] == $b_ar[5]
      $winning_move = true
    elsif $b_ar[6] != ' ' && $b_ar[7] != ' ' && $b_ar[8] != ' ' && $b_ar[6] == $b_ar[7] && $b_ar[7] == $b_ar[8]
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
    puts "             THANKS FOR PLAYING!\n\n"
  end
end
