#handle all of the api request

class API 
   def self.fetch_competition(competitionn)
      url = "https://www.scorebat.com/video-api/v1/"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      competitions= JSON.parse(response)
      competitions.each do |comp|
         a = Competition.new(name: comp["competition"]["name"], title: comp["title"], date: comp["date"])
      
      end
     end

   

    


   end
   
  
    



