class Game

  $player_turn = 1

  def start_check
    start_game = gets.strip.downcase
    sleep(1)
    if start_game == 's'
      puts "             OK, let\'s Play!\n\n\n"
    else
      puts "             PLEASE INPUT 'S' TO CONTINUE..\n"
      start_game = nil?
      start_check
    end
  end

  def player_1_turn
    $board_input = nil?
    $board_input = Integer(gets) rescue false
    if $board_input && $board_input >= 1 && $board_input <= 9
      puts "\n You chose cell #{$board_input}"
      if $board[$board_input - 1] == ' '
        $board[$board_input - 1] = 'X'
        puts ''
        $board_o.board_choice_display
        $board_o.determine_winner
        if $winning_move == false
          $player_turn += 1
        end
      else
        puts "\n\n             Cell #{$board_input} is already chosen\n Choose an empty cell\n\n"
        player_1_turn
      end
    else
      puts "Please enter an Integer/ Value [1-9]!"
      $board_input = nil
      player_1_turn
    end
  end

  def player_2_turn
    $board_input = nil?
    $board_input = Integer(gets) rescue false
    if $board_input && $board_input >= 1 && $board_input <= 9 
      puts "\n You chose cell #{$board_input}"
      if $board[$board_input - 1] == ' '
        $board[$board_input - 1] = 'O'
        puts ''
        $board_o.board_choice_display
        $board_o.determine_winner
        if $winning_move == false
          $player_turn += 1
        end
      else
        puts "\n\n             Cell #{$board_input} is already chosen\n Choose an empty cell\n\n"
        player_2_turn
      end
    else
      puts "Please enter an Integer/ Value [1-9]!"
      $board_input = nil
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

  

end