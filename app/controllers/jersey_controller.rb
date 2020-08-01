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
        @jersey = Jersey.find_by_id(params[:id])
        erb :'jerseys/show'
    end

    # post '/jerseys/show' do
    #     # @jerseys = Jersey.all 
    #     erb :show
    # end
end