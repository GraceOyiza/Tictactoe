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

end