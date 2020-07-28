class User < ActiveRecord::Base 
    has_many :jerseys
    has_many :jerseys, through: :league
end