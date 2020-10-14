class Competition
    attr_accessor :name, :title, :date

    @@all = [ ]

    def initialize(name:, title:, date:)
         @name = name
         @title = title
         @date = date
         @@all << self

    end

    def self.all
        @@all
    end



end
