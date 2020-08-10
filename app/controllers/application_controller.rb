require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :sessions_secret, ENV['SESSION_SECRET'] 
  end

  get "/" do
    erb :welcome
  end

  helpers do

    def current_user 
      # @user = User.find_by_id(sessions_secret[:user_id])
      @user = User.first
    end
  end

end
 