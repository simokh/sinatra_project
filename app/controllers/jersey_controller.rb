class JerseyController < ApplicationController 

    get '/jerseys' do 
        @jerseys = Jersey.all
        @leagues = League.all
        erb :'jerseys/index'
    end

    get '/jerseys/new' do 
        @leagues = League.all
        erb :'jerseys/new'
    end

    post '/jerseys' do 
        jersey = current_user.jerseys.build(params)
        jersey.save
        redirect "/jerseys/#{jersey.id}"
     end

    get '/jerseys/:id' do 
        @jersey = current_user.jerseys.find_by_id(params[:id])
        erb :'/jerseys/show' 
    end

    delete '/jerseys/:id' do #delete action
        # binding.pry
        jersey = current_user.jerseys.find_by_id(params[:id])
        jersey.destroy
        redirect '/jerseys'
    end

    
    get '/jerseys/:id/edit' do  #load edit form
        @jersey = current_user.jerseys.find_by_id(params[:id])
        erb :'jerseys/edit'
    end

     
    patch '/jerseys/:id' do #edit action
        params.delete(:_method)
        @jersey = current_user.jerseys.find_by_id(params[:id])
        @jersey.update(params)
        redirect "/jerseys"
    end

    


end