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

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    redirect to('/player_name')
  end

  get '/player_name' do
    erb(:player_name)
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do

  end

end
