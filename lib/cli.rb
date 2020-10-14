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
        API.fetch_competition(@competition)
        games = Competition.all
        print_competitions(games)
        
    
      end

      def print_competitions(game)
        puts " "
        puts "Game Matches"
        puts " "
        game.each_with_index do | d, i |
          puts "#{ i + 1 }. #{d.title}"
       end 
    end 
      

  end
