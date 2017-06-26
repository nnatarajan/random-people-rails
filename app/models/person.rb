class Person < ApplicationRecord
    validates :name, :age, :race, :hair_color, presence: true
    validates :name, uniqueness:  true
    #message: "%{value} already exists in the database"
    validates :age, numericality: {greater_than_or_equal_to: 1} #{only_integer: true}
    #validates :age, 
    # validates :age_positive_integer

    # def age_positive_integer
    #     if age <= 0
    #         errors.add(:age, "can't be a negative number")
    #     end
    # end
end
