class Games

    attr_accessor :name, :date

    @@all = []

    def initialize(name:, date:)
        @name = name
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

end
