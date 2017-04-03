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

  get '/player_name' do
    erb(:player_name)
  end

  post '/names' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    weapon = params[:weapon]
    redirect to('/attack')
  end

  get '/attack' do
    erb(:attack)
  end


end
