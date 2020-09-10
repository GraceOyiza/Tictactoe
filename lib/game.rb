class Game

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

end