class Jersey < ActiveRecord::Base 
    belongs_to :users 
    belongs_to :leagues
end