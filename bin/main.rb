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

#Start Game
sleep(2)

puts start_msg = "           Press \'S\' to start!"

2.times do
  print "\r#{ start_msg }"
  sleep 0.5
  print "\r#{ ' ' * start_msg.size }   "
  sleep 0.5
end


print "         \n"
print "#{ start_msg }\n"
start_game = gets.strip.downcase
sleep(1)

#puts " testing #{start_game}"
if start_game == 's' || start_game == 'S'
    puts "               OK, let\'s Play!\n\n\n"
  end
  
  #Player details:
  #Player 1
  sleep(2)
  puts '           Player 1, enter your name'
  player_1 = gets.strip.capitalize!
  sleep(1)
  puts "              #{player_1}, ready to go!\n\n\n"
  
  #Player 2
  sleep(2)
  puts '           Player 2, enter your name'
  player_2 = gets.strip.capitalize!
  sleep(1)
  puts "              #{player_2}, ready to go!\n\n\n"
  
  sleep(3)
  puts "            Great! #{player_1} and #{player_2}"
  sleep(2)
  puts "                 Let's do it!\n\n\n"
  
  sleep(4)
  puts "   Choose a cell (1-9) on the TicTacToe board!\n\n\n"
  active_board
  puts ''
  sleep(4)

#Game play logic

for player_turn in 1..9
  # Player toggle check
  if player_turn.odd?
    puts "              #{player_1}, Your turn!"
    $board_input = gets.chomp.to_i
    puts "You chose cell #{$board_input}"
end
