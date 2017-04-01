require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/start_game' do
    erb(:start)
  end
  
end
