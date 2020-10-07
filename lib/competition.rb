class Competition 
    attr_accessor :name, league_id

    @@all = [ ]

    def initialize(name:, league_id:)
        @name = name
        @league_id = drink_id
        @@all << self
    end

    def self.all
        @@all
    end

    #def find_by_competition(competition)
    #




end