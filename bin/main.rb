#!/usr/bin/env ruby

$c1 = 1 # Board Cells
$c2 = 2
$c3 = 3
$c4 = 4
$c5 = 5
$c6 = 6
$c7 = 7
$c8 = 8
$c9 = 9

$board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

$player_turn = 1

$random_win = nil?

$random_win = rand 3

def active_board
  puts '             .-----.-----.-----.'
  puts "             |  #{$c1}  |  #{$c2}  |  #{$c3}  |"
  puts '             .-----+-----+-----.'
  puts "             |  #{$c4}  |  #{$c5}  |  #{$c6}  |"
  puts '             .-----+-----+-----.'
  puts "             |  #{$c7}  |  #{$c8}  |  #{$c9}  |"
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

def display_demo_board
  puts '             .-----.-----.-----.'
  puts '             |  X  |  O  |  X  |'
  puts '             .-----+-----+-----.'
  puts '             |  O  |  X  |  O  |'
  puts '             .-----+-----+-----.'
  puts '             |  X  |  O  |     |'
  puts '             .-----.-----.-----.'
end

puts "\n\n"
puts '           Welcome,  TiC TaC To\'eR!'
puts ''
display_demo_board
puts ''
puts "          Built by Robert and Grace\n\n\n"

sleep(2)
start_msg = "            Press \'S\' to start!" # Start Game

2.times do
  print "\r#{start_msg}"
  sleep 0.5
  print "\r#{' ' * start_msg.size}"
  sleep 0.5
end

print "\n"
puts start_msg
start_game = gets.strip.downcase
sleep(1)

puts "             OK, let\'s Play!\n\n\n" if start_game == 's'

sleep(1)
puts '           Player 1, enter your name' # Player 1
$player_1 = gets.strip.capitalize!
sleep(1)
puts "              #{$player_1}, ready to go!\n\n\n"

sleep(1)
puts '           Player 2, enter your name' # Player 2
$player_2 = gets.strip.capitalize!
sleep(1)
puts "              #{$player_2}, ready to go!\n\n\n"

sleep(1)
puts "            Great! #{$player_1} and #{$player_2}"
sleep(1)
puts "                 Let's do it!\n\n\n"

sleep(2)
puts "   Choose a cell (1-9) on the TicTacToe board!\n\n\n"
active_board
puts "\n\n"
sleep(2)

def player_1_turn
  $board_input = nil?
  $board_input = gets.chomp.to_i
  puts "You chose cell #{$board_input}"
  if $board[$board_input - 1] == ' '
    $board[$board_input - 1] = 'X' # insert position
    puts ''
    board_choice_display
    # check if win is 'true' return
    $player_turn += 1
  else
    puts "             Cell is already chosen\n Choose an empty cell\n"
    player_1_turn
  end
end

def player_2_turn
  $board_input = nil?
  $board_input = gets.chomp.to_i
  puts "You chose cell #{$board_input}"
  if $board[$board_input - 1] == ' '
    $board[$board_input - 1] = 'O'
    puts ''
    board_choice_display
    # check if win is 'true' return
    $player_turn += 1
  else
    puts "             Cell is already chosen\n Choose an empty cell\n"
    player_2_turn
  end
end

def toggle_player_turn
  if $player_turn.odd?
    puts "\n\n"
    puts "              #{$player_1}, Your turn!"
    self.player_1_turn
  elsif $player_turn.even?
    puts "\n\n"
    puts "              #{$player_2}, Your turn!"
    self.player_2_turn
  elsif $player_turn == 10
    print 'results'
  end
end

while $player_turn < rand(7..10) # winning factor will be added later/ in another method
  toggle_player_turn
end

case $random_win
when 1
  puts "\n\n\n            Good job,  #{$player_1}"
  puts '               You won!!!'
when 2
  puts "\n\n\n            Good job, #{$player_2}"
  puts '               You won!!!'
else
  puts '\n\n\n         It\'s a draw'
end
