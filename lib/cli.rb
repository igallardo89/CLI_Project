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
        puts " "
        puts "Type a number listed to see Match Details or type 'exit' to Quit."
        puts " "
        inp = gets.strip.downcase 
        while inp != 'exit' do
          binding.pry
          game = Competition.find_by_name(@competition)[inp.to_i-1]
         
          API.get_game_details(game)
          print_game(game)
       



        end
        
      end

      def print_competitions(game)
        puts " "
        puts "Game Matches"
        puts " "
        game.each_with_index do | d, i |
          puts "#{ i + 1 }. #{d.title}"
       end 
      end 

      def print_game(game)
        puts " "
        puts "#{game.title} Game Highlights"
        puts " "
        puts "League: #{game.name}"
        puts "Teams: #{game.teams}"
        puts "Find video highlights here: #{game.url}"
      end   

      

  end
