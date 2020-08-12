class User < ActiveRecord::Base
    has_secure_password
    has_many :jerseys

    validates :user_name, presence: true
    validates :user_name, uniqueness: true 
    validates :password_digest, :email, presence: true
    validates :email, uniqueness: true
end