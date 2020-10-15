#handle all of the api request

class API 

   def self.fetch_games(game)
      url = "https://www.scorebat.com/video-api/v1/"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      games= JSON.parse(response)
      games.each do |g|
         a = Games.new(name: g["title"], date: g["date"])
   
      end
    end
   
end
