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
start_msg = "            Press \'S\' to start!" # Start Game