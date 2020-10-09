#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI

    def start
        puts " "
        puts "Welcome to League Highlights!"
        puts " "
        puts "Name a Country"
        puts " "
        @competitons = API.fetch_competition(@competition)
        leagues = @competitions.map {|competition| competition["competition"]["name"]}.map {|name| name.uniq}
        leagues.each do |l|
            puts "#{i+1}:#{league}"
        end
        
         


end
      
      
      
      
      
      
      
  
      
      