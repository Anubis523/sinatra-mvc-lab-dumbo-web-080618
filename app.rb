require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    @piglantinizer = PigLatinizer.new
    @piglatin_phrase = params[:user_phrase]
    erb :piglatin_display
  end
end