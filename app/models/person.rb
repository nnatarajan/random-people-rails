class Person < ApplicationRecord
    validates :name, :age, :race, :hair_color, presence: true
    validates :name, uniqueness:  true
    #message: "%{value} already exists in the database"
    validates :age, numericality: {only_integer: true,
    message: "%{value} is not a valid age"}
end
