class Jersey < ActiveRecord::Base 
    belongs_to :users 
    belongs_to :league
end