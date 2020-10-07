#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI

    def start
        puts ""
        puts "Welcome to Game Highlights!"
        puts ""
        puts "Name a current league"
        puts ""
        @competition = gets.strip.downcase
        puts ""
      
    end 

end
