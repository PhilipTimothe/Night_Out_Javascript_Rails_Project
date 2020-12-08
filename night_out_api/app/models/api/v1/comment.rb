class Api::V1::Comment < ApplicationRecord
    belongs_to :restaurant
    accepts_nested_attributes_for :restaurant

    # def restaurant_attributes=(restaurant_attributes)
    #     restaurant = Restaurant.find_or_create_by(restaurant_attributes)
    #     self.restaurant = restaurant
    #     save 
    # end

end
