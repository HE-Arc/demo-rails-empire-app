class Category < ApplicationRecord
    has_many :trooper

    def trooper_of_the_day
        trooper.alive.order("RAND()").first
    end
end
