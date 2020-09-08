#!/usr/bin/env ruby

$board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

$player_turn = 1

$random_win_msg = nil?

$random_win_msg = rand 7

$win_msg = ''

$play_turns = true

$winning_move = false

$str = ''

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

def display_demo_board
  puts '             .-----.-----.-----.'
  puts '             |  X  |  O  |  X  |'
  puts '             .-----+-----+-----.'
  puts '             |  O  |  X  |  O  |'
  puts '             .-----+-----+-----.'
  puts '             |  X  |  O  |     |'
  puts '             .-----.-----.-----.'
end

def player_1_turn
  $board_input = nil?
  $board_input = gets.chomp.to_i
  puts "You chose cell #{$board_input}"
  if $board[$board_input - 1] == ' '
    $board[$board_input - 1] = 'X'
    puts ''
    board_choice_display
    determine_winner
    if $winning_move == false
      $player_turn += 1
    end
  else
    puts "\n\n             Cell #{$board_input} is already chosen\n Choose an empty cell\n\n"
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
    determine_winner
    if $winning_move == false
      $player_turn += 1   
    end
  else
    puts "\n\n             Cell #{$board_input} is already chosen\n Choose an empty cell\n\n"
    player_2_turn
  end
end

def toggle_player_turn
  if $player_turn.odd?
    puts "\n\n"
    puts "           #{$player_1}, Your turn! [X]\n\n"
    self.player_1_turn
  elsif $player_turn.even?
    puts "\n\n"
    puts "           #{$player_2}, Your turn! [O]\n\n"
    self.player_2_turn
  end
end

def print_win_msg
  case $random_win_msg
  when 1
    $win_msg = "You made it.."
  when 2
    $win_msg = "You\'re a champion.."
  when 3
    $win_msg = "Awesome.."
  when 4
    $win_msg = "Fantastic.. "
  when 5
    $win_msg = "Are You Awesome or What.. "
  when 6
    $win_msg = "That was swift.. "  
  else
    $win_msg = "Great Job.."
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
  print "=====\n"
end

def declare_result
  print_win_msg
  if $winning_move == true && $player_turn.odd?
    $str = "#{$win_msg} #{$player_1}, You Won!!!"
    print_results
  elsif $winning_move == true && $player_turn.even?
    $str = "#{$win_msg} #{$player_2}, You Won!!!"
    print_results
  elsif $winning_move == false && $player_turn == 10
    $str = "It\'s a draw!"
    print_results
  end
end

puts "\n\n"
puts '           Welcome,  TiC TaC To\'eR!'
puts ''
display_demo_board
puts ''
sleep(1)
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
puts '       Player [1], enter your name >>' # Player 1
$player_1 = gets.strip.capitalize!
sleep(1)
puts "              #{$player_1}, ready to go!\n\n\n"

sleep(1)
puts '       Player [2], enter your name >>' # Player 2
$player_2 = gets.strip.capitalize!
sleep(1)
puts "              #{$player_2}, ready to go!\n\n\n"

sleep(2)
puts "            Great! #{$player_1} and #{$player_2}"
sleep(1)
puts "                 Let's do it!\n\n\n"

sleep(2)
puts "   Choose a cell (1-9) on the TicTacToe board!\n\n\n"
sleep(1)
numbered_board
puts "\n\n"
sleep(2)

while $play_turns
  toggle_player_turn
  if $winning_move || $player_turn == 10
    $play_turns = false
    puts "\n\n"
  end
end

declare_result
