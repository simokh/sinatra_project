class League < ActiveRecord::Base 
    has_many :jerseys
    # belongs_to :jersey
    # has_many :jerseys, through: :users
    has_many :users, through: :jerseys 
end