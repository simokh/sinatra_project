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

    def welcome 
      @user = User.find_by_id(session[:user_name])
      puts "Welcome #{@user}"
    end

    def logged_in?
      !!session[:user_id]
    end

    def logout!
      session.clear
    end
  end

end

