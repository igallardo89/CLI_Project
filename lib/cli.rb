#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI

    def start
        puts " "
        puts "Welcome to Game Match Finder!"
        puts " "
        puts "Name a League Competition"
        puts " "
        @competition = gets.strip.downcase
        puts " "
        API.fetch_competition(@competition)
        puts " "
    end 
end
      
      
      
      
      
      
      
  
      
      
      
      
      
        # Competition.all  #displayed the array @@all
        #print_league(competition)  #to display to our user
        #puts ""
        #puts "Type a number listed to see scores!"
       # puts ""
        #inp = gets.strip.downcase
        #while inp != 'exit' do 
         #   puts "Sorry there are no current games in that league. Try another league to find more games!"
         #   inp = gets.strip.downcase #gives option to look for another

            #need to put a list here to be about to get the games to circle back to ApI get league games.
            #API.get_league_games
  
    

   # def print_league(competitions)
      #  puts ""
    #    puts "Here are the games in the league #{@competition}" #from here we can provide game scores
    #    puts ""
   #     competitions.each_with_index |d, i|
       #     puts "#{i+1}. #{d.name}"
   #        binding.pry
 #   end 


