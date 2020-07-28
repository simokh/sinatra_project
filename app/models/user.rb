class User < ActiveRecord::base 
    has_many :jerseys
    has_many :jerseys, through: :leagues
end