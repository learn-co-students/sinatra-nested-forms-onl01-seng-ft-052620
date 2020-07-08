class Pirate
    attr_accessor :name, :weight, :height

    @@all = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end