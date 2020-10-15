class Games

    attr_accessor :name

    @@all = []

    def initialize(name:)
        @name = name
       
        
       
        @@all << self
    
    end

    def self.all
        @@all
    end


    def self.find_by_index(game)
        @@all.find {|g| g.name binding.pry }
        
    
        

    end 
    
end
