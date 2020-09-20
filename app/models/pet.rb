class Pet < ApplicationRecord

    has_many :pet_histories
    
    delegate :count, to: :pet_histories, prefix: true

    def average_weight
        pet_histories.average(:weight)    
    end

    def average_height
        pet_histories.average(:height)
    end

    def maximum_weight
        pet_histories.pluck(:weight).max   
    end

    def maximum_height
        pet_histories.pluck(:height).max   
    end
end
