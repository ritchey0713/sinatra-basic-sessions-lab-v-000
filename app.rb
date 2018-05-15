require_relative 'config/environment'

end 

class App < Sinatra::Base
  configure do 
  enable :sessions
  set :session_secret, "secret"
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    session[:item] = params[:item]
    @session = session
  end 
end

