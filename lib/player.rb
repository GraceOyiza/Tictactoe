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

      def check_player2_name
        sleep(1)
        puts '       Player [2], enter your name'
        $player_2 = gets.chomp.capitalize!
        if $player_2 != nil  #|| (input != '0') && (input.to_i.to_s != input.strip)
          sleep(1)
          puts "              #{$player_2}, ready to go!\n\n\n"
        else
          puts "Please enter a correct name"
          check_player2_name
          puts "\n"
        end
      end 

      def ready_to_play
        sleep(2)
        puts "            Great! #{$player_1} and #{$player_2}"
        sleep(1)
        puts "                 Let's do it!\n\n\n"
      end
end