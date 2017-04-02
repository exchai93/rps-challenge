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
    player_1 = Player.new(params[:player_1])
    @game = Game.create(player_1)
    redirect to('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

end
