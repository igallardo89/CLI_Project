class Competition
    attr_accessor :name, :title, :date, :url, :side_1, :side_2

    @@all = []

    def initialize(name:, title:, date:)
         @name = name
         @title = title
         @date = date
         @@all << self

    end

    def self.all
        @@all
    end

    def self.find_by_name(competition)
        @@all.find {|d| d.title == competition }
        #not working yet
        
       
    end

 
  


    
        



end
