#handle all of the api request

class API 
   def self.fetch_competition(competition)
      url = "https://www.scorebat.com/video-api/v1/"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      competitions= JSON.parse(response)
      
   end
end  
      
      





