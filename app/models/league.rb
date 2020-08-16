class League < ActiveRecord::Base 
    has_many :jerseys
    belongs_to :jersey
    has_many :jerseys, through: :users
end