class Ship
    
        attr_accessor :type, :booty, :name
    
        @@all = []
    
        def initialize(params)
            params.each {|key, value| self.send("#{key}=", value)}
            @@all << self
        end
    
        def self.all
            @@all
        end
    
        def self.clear
            @@all.clear
        end

end