require './config/environment'

class ApplicationController < Sinatra::Base

  set :views, 'app/views'
  enable :sessions
  set :session_secret, "security"

  get '/' do
    erb :"/home"
  end

  helpers do

    def logged_in?
      !!session[:id]
    end

    def log_out
      session.clear
    end

    def current_user
      User.find(session[:id])
    end
  end
end
