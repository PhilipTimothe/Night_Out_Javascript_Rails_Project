class Api::V1::RestaurantsController < ApplicationController

    def index
        @restaurants = Api::V1::Restaurant.all
        render json: @restaurants, except: [:created_at, :updated_at]
    end

end
