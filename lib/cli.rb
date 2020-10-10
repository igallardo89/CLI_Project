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
    end
        
      
        
         


end
      
      
      
      
      
      
      
  
      
      