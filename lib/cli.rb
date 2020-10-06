#interactions with user 
#contain all of our gets and puts
#control flow of our program 

class CLI

    def start
        puts ""
        puts "Welcome to Game Highlights!"
        puts ""
        puts "Name a league"
        puts ""
        @league = gets.strip.downcase
        API.fetch_league(@league)
    end 

end
