class Ship
    attr_accessor :name,:type,:booty
    @@all =[]

    def initialize(opts)
        @name=opts["name"]
        @type=opts["type"]
        @booty=opts["booty"]
        @@all<<self
    end

    def self.all
        @@all
    end
    
    def self.clear
        @@all.clear
    end
end