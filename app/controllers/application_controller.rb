require './config/environment'

class ApplicaionController < Sinatra::Base

  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'password_security'
  end
end
