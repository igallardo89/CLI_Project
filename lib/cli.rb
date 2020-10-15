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
        @game = gets.strip.downcase
        
        
    end
    def print_games(match)
      puts " "
      puts "Game Matches:"
      puts " "
      match.each_with_index do | m , i|
        puts "#{ i + 1}. #{m.name}"
      end
  end
end