class LeagueController < ApplicationController 

    get '/leagues' do 
        @leagues = League.all
        erb :index
    end
end