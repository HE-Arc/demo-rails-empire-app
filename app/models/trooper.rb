class Trooper < ApplicationRecord
    validates :name,
        presence: true, 
        uniqueness: true

    validates :age,
        numericality: { greater_than_or_equal_to: 0 },
        presence: true

    validates :strength,
        numericality: { greater_than: 0, less_than_or_equal_to: 10 },
        presence: true
end
