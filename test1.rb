def loop_player_turn
  for player_turn in 1..9
    #puts player_turn
  end
end

$random_win = rand 3

case $random_win
when 1
  puts "Well done, #{$player_1}, \n You won!!!"
when 2
  puts "Well done, #{$player_2}, \n You won!!!"
else
  puts "It's a draw"
end