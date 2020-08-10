class JerseyController < ApplicationController 

    get '/jerseys' do 
        @jerseys = current_user.jerseys.all
        erb :'jerseys/index'
    end

    get '/jerseys/new' do # load the new.erb form 
        @leagues = League.all
        erb :'jerseys/new'
    end

    # creates ans saves the new instance jersey entered to data base 
    
    post '/jerseys' do 
        
        jersey = current_user.jerseys.build(params)
        jersey.save
        redirect "/jerseys/#{jersey.id}"
     end

    # the show page will display the new entry 
    get '/jerseys/:id' do 
        @jersey = current_user.jerseys.find_by_id(params[:id])
        erb :'/jerseys/show' 
    end

    delete '/jerseys/:id' do #delete action
        
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
        redirect '/jerseys'
        # redirect '/jerseys'
    end
end


