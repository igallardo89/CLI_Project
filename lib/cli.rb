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
        puts " "
        inp = gets.strip.downcase
        while inp != 'exit' 
          
          if inp.to_i > 0
          choice = Games.find_by_index(inp.to_i-1)
          if choice == nil
            puts "Sorry try a Game from the list!"
          else
            puts " "
            puts "Name: #{choice.name}"
            puts "Date & Time: #{choice.date}"
            puts "League: #{choice.league}"
            puts "Team 1: #{choice.team_1}"
            puts "Team 2: #{choice.team_2}"
            puts "Watch Game Highlights here: #{choice.url}!"
          end

        
        
     
       
          end  
        end
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
