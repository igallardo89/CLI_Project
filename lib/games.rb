class Games

    attr_accessor :name, :date, :league, :team_1, :team_2, :url

    @@all = []
    @@teams = [ ]

    def initialize(name:, date:, league:, team_1:, team_2:, url:)
        @name = name  
        @date = date
        @league = league
        @team_1 = team_1
        @team_2 = team_2
        @url = url
        @@all << self   
        @@teams << team_1 
        @@teams << team_2
    end
    def self.all
        @@all
    end

    def self.find_by_index(index)
        @@all[index]
    end

    def self.teams
        @@teams
    end 

end
