class Player
    $player_1 = ''
    $player_2 = ''

    def check_player1_name
        sleep(1)
        puts '       Player [1], enter your name' 
        $player_1 = gets.chomp.capitalize!
        if $player_1 != nil  #|| $player_1.scan(/\D/) != empty
          sleep(1)
          puts "              #{$player_1}, ready to go!\n\n"
        else
          puts "Please enter a correct name"
          check_player1_name
          puts "\n"
        end
      end

end