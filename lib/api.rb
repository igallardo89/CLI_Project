#handle all of the api request

class API 

   def self.fetch_games
      url = "https://www.scorebat.com/video-api/v1/"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      games= JSON.parse(response)
      games.each do |g|
         a = Games.new(name: g["title"], date: g["date"], league: g["competition"]["name"], team_1: g["side1"]["name"], team_2: g["side2"]["name"], url: g["url"] )
        
      end
    end
   
end
