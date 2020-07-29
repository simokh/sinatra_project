class LeagueController < ApplicationController 

    get "/league" do 

        erb :'league/index'
    end

end