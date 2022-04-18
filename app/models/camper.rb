class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups 

    validates :name, presence: true
    validates :age, inclusion: { in: 8..18, message: "%{value} is not between 8 and 18"}
end
