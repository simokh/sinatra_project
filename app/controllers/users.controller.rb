class UsersController < ApplicationController

    #loads the erb form 
    get '/signup' do 
        erb :'users/signup'
    end

    post '/signup' do 
        if params[:user_name] == "" || params[:password] == "" || params[:email] == "" || params[:confirm_password] == ""
            redirect to '/signup'
        else 
        user = User.create(params) 
        session[:user_id] = user.id 
        redirect '/jerseys'
        end 
    end

    get '/signup' do 
        erb :'users/signup'
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do 
        user = User.find_by(user_name: params[:user_name])
        
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/jerseys'
        else 
            @errors= "Invalid User Name or Passwrod"
            erb :'users/login'
        end
    end

    delete '/logout' do 
        logout!
        redirect '/'
    end
end

