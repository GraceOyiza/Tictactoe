#!/usr/bin/env ruby

require '../lib/Board.rb'
require '../lib/Game.rb'
require '../lib/Player.rb'

board_o = Board.new
game_o = Game.new
palyer_o = Player.new

puts "\n\n"
puts '           Welcome,  TiC TaC To\'eR!'
puts ''
board_o.display_demo_board
puts ''
sleep(1)
puts "          Built by Robert and Grace\n\n\n"

sleep(1)
start_msg = "            Press \'S\' to start!" 

2.times do
  print "\r#{start_msg}"
  sleep 0.5
  print "\r#{' ' * start_msg.size}"
  sleep 0.5
end

print "\n"
puts start_msg

game_o.start_check

palyer_o.check_player1_name
palyer_o.check_player2_name

palyer_o.ready_to_play