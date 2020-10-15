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

    def self.find_by_name(competition)
        @@all.select {|d| d.title binding.pry  }
        
       
    end

 
  


    
        



end
