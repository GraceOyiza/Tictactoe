#!/usr/bin/env ruby

require '../lib/Board.rb'
require '../lib/Game.rb'

$board_o = Board.new
$game_o = Game.new

puts "\n\n"
puts '           Welcome,  TiC TaC To\'eR!'
puts ''
$board_o.display_demo_board
puts ''
sleep(1)
puts "          Built by Robert and Grace\n\n\n"

sleep(1)
start_msg = "            Press \'S\' to start!" # Start Game

2.times do
  print "\r#{start_msg}"
  sleep 0.5
  print "\r#{' ' * start_msg.size}"
  sleep 0.5
end

print "\n"
puts start_msg

$game_o.start_check

sleep(1)
puts '       Player [1], enter your name >>' # Player 1
$player_1 = gets.chomp.capitalize!

puts $player_1.length

if $player_1 != nil # || $player_1.scan(/\D/).empty?
  sleep(1)
  puts "              #{$player_1}, ready to go!\n\n\n"
else
  puts " Enter correct name"
end

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
$board_o.numbered_board
puts "\n\n"
sleep(2)

while $play_turns
  $game_o.toggle_player_turn
  if $winning_move || $player_turn == 10
    $play_turns = false
    puts "\n\n"
  end
end

$game_o.declare_result
