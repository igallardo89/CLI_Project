#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI
  def start
      puts " "
      puts "Welcome to Game Highlights Finder!"
      puts " "
      puts " "
      puts "Pick from the List of Games Below:"
      puts " "
      API.fetch_games(@game)
      matches = Games.all
      print_games(matches)
      puts " "
      puts "Type a number listed to see Match Details or type 'exit' to quit"
      puts " "
      inp = nil
      inp = gets.strip.downcase
      while inp != 'exit' do
        game_selected = Games.find_by_index(inp.to_i-1)
        if inp == 'list'
          print_games(matches)
        elsif game_selected == nil
        puts " "
        puts "Invalid option:"
       else 
          inp == inp.to_i > 0 && inp.to_i <= choice.length
          game_details(game_selected)
      end 
        puts "Search for another team, or type exit to 'exit'."
        puts " "
         inp = gets.strip.downcase
      end 
      puts "Goodbye! See you next time!"
    end

  def print_games(match)
    puts " "
    puts "Game Matches:"
    puts " "
    match.each_with_index do | m , i|
      puts "#{ i + 1 }. #{m.name}"
    end
  end

  def game_details(game_selected)
          puts " "
          puts "Name: #{game_selected.name}"
          puts "Date & Time: #{game_selected.date}"
          puts " "
          puts "League: #{game_selected.league}"
          puts " "
          puts "Team 1: #{game_selected.team_1}"
          puts "Team 2: #{game_selected.team_2}"
          puts " "
          puts "Watch Game Highlights here: #{game_selected.url}!"
          puts " "
  end
end