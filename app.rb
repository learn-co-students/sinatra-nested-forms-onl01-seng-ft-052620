require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate_hash = params[:pirate]
      @pirate = Pirate.new(name: pirate_hash[:name], weight: pirate_hash[:weight], height: pirate_hash[:height])

      pirate_hash[:ships].each do |ship|
        Ship.new(name: ship[:name], type: ship[:type], booty: ship[:booty])
      end
      @ships = Ship.all

      erb :"pirates/show"
    end
  end
end
