require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  get '/' do
    @session = session
    erb :index
  end
  get '/checkout' do
    erb :index
  end
  post '/checkout' do
    @final = params[:item]
    session["item"] = @final
    erb :index
  end
end
