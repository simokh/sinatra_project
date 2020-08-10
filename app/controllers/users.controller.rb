class UsersController < ApplicationController

    #loads the erb form 
    get '/signup' do 
        erb :'users/signup'
    end

    post '/signup' do 
        user = User.create(params) 
        session[:user_id] = user.id 
        redirect '/jerseys'
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
        session.destroy 
        redirect '/'
    end
end

