class Jersey < ActiveRecord::base 
    belongs_to :users 
    belongs_to :leagues
    belongs_to :users, through: :leagues
end