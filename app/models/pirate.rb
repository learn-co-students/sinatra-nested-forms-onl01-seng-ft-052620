class Pirate
    attr_accessor :name,:weight,:height
    @@all = []

    def initialize(opts)
        @name=opts["name"]
        @weight=opts["weight"]
        @height=opts["height"]
        @@all<<self
    end

    def self.all
        @@all
    end
end