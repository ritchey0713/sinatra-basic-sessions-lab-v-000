require_relative 'config/environment'
configure do 
  enable :sessions
  set :session_secret

class App < Sinatra::Base
end