class Ship
    attr_reader :name, :type, :booty
    @@all =[]
    def initialize(args= nil)
        @name = args["name"]
        @type = args["type"]
        @booty = args["booty"]
        @@all << self
        # binding.pry
    end
    
    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end