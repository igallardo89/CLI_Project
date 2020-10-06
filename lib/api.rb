#handle all of the api request

class API 
    def self.fetch_team(league)
        url = 'https://www.scorebat.com/video_api/v1/'
        uri = URI(url)
        response = Net::HTTP.get(uri)
        x = JSON.parse(response)
        response.body
    end



end