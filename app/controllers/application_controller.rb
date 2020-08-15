require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, ENV['SESSION_SECRET'] 
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def current_user 
      @user = User.find_by_id(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end

    def logout!
      session.clear
    end

    def jersey 
      @jersey = current_user.jerseys.find_by_id(params[:id])
    end
  end

end

