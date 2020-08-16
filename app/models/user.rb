class User < ActiveRecord::Base
    has_secure_password
    has_many :jerseys
    has_many :leagues, through: :jerseys

    validates :user_name, presence: true
    validates :user_name, uniqueness: true
    validates :email, presence: true  
    validates :email, uniqueness: true 
end