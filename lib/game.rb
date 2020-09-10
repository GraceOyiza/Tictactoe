require '../lib/Board.rb'
  $board_o = Board.new

class Game
  $str = ''
  $win_msg = ''
  $player_turn = 1
  $play_turns = true
  

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

  
  def print_win_msg
    random_win_msg = rand 7
    case random_win_msg
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
  
  def game_play
    while $play_turns
      toggle_player_turn
      if $winning_move || $player_turn == 10
        $play_turns = false
        puts "\n\n"
      end
    end
  end

    def declare_result
      print_win_msg
      if $winning_move == true && $player_turn.odd?
        $str = "#{$win_msg} #{$player_1}, You Won!!!"
        $board_o.print_results
      elsif $winning_move == true && $player_turn.even?
        $str = "#{$win_msg} #{$player_2}, You Won!!!"
        $board_o.print_results
      elsif $winning_move == false && $player_turn == 10
        $str = "It\'s a draw!"
        $board_o.print_results
      end
    end

end