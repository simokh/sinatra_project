class Jersey < ActiveRecord::Base 
# class Jersey
    belongs_to :user 
    belongs_to :league
    validates :club_name, presence: true
    validates :number, presence: true
end




