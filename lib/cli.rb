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
        @competition = gets.strip.downcase 
        puts " "
        while @competition != 'exit' do 
         match = Competition.find_by_title(@competition)[@competition.to_i-1]
         binding.pry
         
        
         
         #API.get_match_details(match)

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
      

  end
