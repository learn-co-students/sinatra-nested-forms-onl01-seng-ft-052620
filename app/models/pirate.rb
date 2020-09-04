class Pirate
    attr_reader :name, :weight, :height
    @@all =[]

    def initialize(args = nil)
        @name = args["name"]
        @weight = args["weight"]
        @height = args["height"]
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

end