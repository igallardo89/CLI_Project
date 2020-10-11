#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI

    def start
        puts " "
        puts "Welcome to Game Finder!"
        puts " "
        puts "Look below for the current Leagues happening:"
        puts " "
        @competitions = API.fetch_competition(@competition)
        leagues = @competitions.map{ |competition| competition["competition"]["name"] }.map { |name|  name.match(/(^.*):/)[1] }.uniq.sort
        leagues.each do |league|
        puts "#{league}"
      end
        puts " "
        puts "Pick a Country or Global League for recent games or input 'exit' to quit."
        puts " "
    
        while true do
         inp = gets.strip.upcase
         puts " "
        if inp.downcase == "exit"
          puts " "
          puts "Goodbye! See you next time!"
          puts " "
          exit
        elsif leagues.include? inp
         games = find_games(inp)
         puts "Matches:"
         puts ""
         game_titles = games.map { |game| game["title"] }
         game_titles.each_with_index do |game_title, i|
          puts "#{i + 1}: #{game_title}"
          puts " "
         end
         puts " "
         puts "Type 'exit' to quit or pick another league to continue"
         puts " "
         leagues.each do |league|
          puts "#{league}"
         end 
          puts " "
        else 
          puts "Invalid option, please try another league"
          puts " "
        end
      end
    end
    
      def find_games(inp)
        @competitions.map { |competition| competition if competition["competition"]["name"].start_with?(inp) }.compact
      end

      
      
end
      
      
      