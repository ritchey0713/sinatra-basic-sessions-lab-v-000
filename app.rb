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
    session[:item] = ""
  end 
end

get '/hey' do 
  session["name"] = "Victoria"
  @session = session
end