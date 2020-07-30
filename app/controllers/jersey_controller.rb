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
       jersey = User.first.jerseys.build(params)
       jersey.club_name 
       jersey.number
       jersey.save
    
       redirect '/jerseys'
    end

    # get '/jerseys/:id' do 
    #     @jerseys = Jerseys.all
    #     erb :'leagues/index'
    # end

    # post '/jerseys/show' do
    #     # @jerseys = Jersey.all 
    #     erb :show
    # end
end