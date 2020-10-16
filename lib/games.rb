class Games

    attr_accessor :name, :date, :league, :team_1, :team_2, :url

    @@all = []

    def initialize(name:, date:, league:, team_1:, team_2:, url:)
        @name = name  
        @date = date
        @league = league
        @team_1 = team_1
        @team_2 = team_2
        @url = url
        @@all << self   
    end
    def self.all
        @@all
    end

    def self.find_by_index(index)
        @@all[index]
    end 
    
end
