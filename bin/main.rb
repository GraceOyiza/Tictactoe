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