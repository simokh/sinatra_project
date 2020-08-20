class UsersController < ApplicationController

    #loads the erb form 
    get '/signup' do 
        erb :'users/signup'
    end

    post '/signup' do 
        @user = User.new(params) 
        if @user.save
            session[:user_id] = @user.id 
            redirect '/jerseys'
        else 
            @errors = @user.errors.full_messages
            erb :'users/signup'
        end 
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
            @errors = "Invalid Username or Password"
            erb :'users/login' 
        end
    end

    

    delete '/logout' do 
        logout!
        redirect '/'
    end
end

