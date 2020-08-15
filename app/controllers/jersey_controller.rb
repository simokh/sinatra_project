class JerseyController < ApplicationController 
    enable :sessions
    get '/jerseys' do
        if !logged_in?
            redirect '/login'
        else 
        @jerseys = current_user.jerseys.all
        erb :'jerseys/index'
        end 
    end

    # "/jerseys/#{@jersey.id}"

    get '/jerseys/new' do # load the new.erb form
        if !logged_in?
            redirect '/login'
        else 
        @leagues = League.all
        erb :'jerseys/new'
        end 
    end

    # creates and saves the new instance jersey entered to data base 
    
    post '/jerseys' do 
        
        if params[:club_name].empty? || params[:number].empty?
            redirect to '/jerseys/new'
            @errors= "Club Name and/or Number Can't be Blank"
        else
            @jersey = current_user.jerseys.build(params)
            @jersey.save
            redirect to "/jerseys/#{@jersey.id}"

        end
     end

    # the show page will display the new entry 
    get '/jerseys/:id' do
        if !logged_in?
            redirect '/login'
        else 
        @jersey = current_user.jerseys.find_by_id(params[:id])
            if @jersey.save 
            erb :'/jerseys/show'
            end
        end 
    end

    delete '/jerseys/:id' do #delete action
        
        # jersey = current_user.jerseys.find_by_id(params[:id]) 
        jersey.destroy
        redirect '/jerseys'
    end

    
    get '/jerseys/:id/edit' do  #load edit form
        if !logged_in?
            redirect '/login'
        else 
        @jersey = current_user.jerseys.find_by_id(params[:id])
        erb :'jerseys/edit'
        end 
    end

     
    patch '/jerseys/:id' do #edit action
        params.delete(:_method)
        @jersey = current_user.jerseys.find_by_id(params[:id])
        @jersey.update(params)
        redirect '/jerseys'
    end 
end


