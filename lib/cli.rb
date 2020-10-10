#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI

    def start
        puts " "
        puts "Welcome to League Highlights!"
        puts " "
        puts "Current Leagues are found below:"
        puts " "
        @competitions = API.fetch_competition(@competition)
        leagues = @competitions.map{ |competition| competition["competition"]["name"] }.map { |name|  name.match(/(^.*):/)[1] }.uniq
        leagues.each do |league|
        puts "#{league}"
      end
        puts " "
        puts "Please a Country or Global League for games, or input 'exit' to quit."
        puts " "
        inp = gets.strip.upcase
        puts " "
        if leagues.include? inp
         games = find_games(inp)
         game_titles = games.map { |game| game["title"] }
         games_titles.each_with_index do |game_title, i|
         end 
        end
      end


  

        
      
       def find_games(inp)
        @competitions.map { |competition| competition if competition["competition"]["name"].start_with?(inp) }.compact
      end
         


end
      
      
      
      
      
      
      
  
      
      