#!/usr/bin/env ruby
puts 'Hello World'

#welcome screen
#Board Cells
$c1 = 1
$c2 = 2
$c3 = 3
$c4 = 4
$c5 = 5
$c6 = 6
$c7 = 7
$c8 = 8
$c9 = 9


$board = [" "," "," "," "," "," "," "," "," "]


def active_board
puts "             .-----.-----.-----."
puts "             |  #{ $c1 }  |  #{$c2}  |  #{$c3}  |"
puts "             .-----+-----+-----."
puts "             |  #{$c4}  |  #{$c5}  |  #{$c6}  |"
puts "             .-----+-----+-----."
puts "             |  #{$c7}  |  #{$c8}  |  #{$c9}  |"
puts "             .-----.-----.-----."
end

def board_choice_display
  puts "      .-----.-----.-----.      .-----.-----.-----."
  puts "      |  1  |  2  |  3  |      |  #{$board[0]}  |  #{$board[1]}  |  #{$board[2]}  |"
  puts "      .-----+-----+-----.      .-----+-----+-----."
  puts "      |  4  |  5  |  6  | ==>> |  #{$board[3]}  |  #{$board[4]}  |  #{$board[5]}  |"
  puts "      .-----+-----+-----.      .-----+-----+-----."
  puts "      |  7  |  8  |  9  |      |  #{$board[6]}  |  #{$board[7]}  |  #{$board[8]}  |"
  puts "      .-----.-----.-----.      .-----.-----.-----."
end

def display_demo_board
  puts "             .-----.-----.-----."
  puts "             |  X  |  O  |  X  |"
  puts "             .-----+-----+-----."
  puts "             |  O  |  X  |  O  |"
  puts "             .-----+-----+-----."
  puts "             |  X  |  O  |     |"
  puts "             .-----.-----.-----."
end

puts "\n\n"
puts '           Welcome,  TiC TaC To\'eR!'
puts ''
display_demo_board
puts ''
puts "          Built by Robert and Grace\n\n\n"
