#handle all of the api request

class API 
    

   def self.fetch_competition(competition)
        
      url = "https://www.scorebat.com/video-api/v1/" 

      uri = URI(url)
      response = Net::HTTP.get(uri)
      competitions= JSON.parse['competition']
      binding.pry
 
   end
end  
      
      


























       #   competitions.each do |l|
     #       binding.pry
     #  a = Competition.new (name: l["name"], league_id: l["id"], competition : competition)
           
  

   # def self.get_league_games(competition)
   #     url = "https://www.scorebat.com/video-api/v1/"
   #     uri = URI(url)
    #    response = Net::HTTP.get(uri)
   #     games = JSON.parse(response)["title"]

  ##  end
#end 