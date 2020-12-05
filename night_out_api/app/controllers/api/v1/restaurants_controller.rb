class Api::V1::RestaurantsController < ApplicationController

    def index
        @restaurants = Api::V1::Restaurant.all
        render json: @restaurants, except: [:created_at, :updated_at]
    end

    def show
        if params[:id] && ((Api::V1::Restaurant.scope(params[:id]) == []) == false)
            @restaurants = Api::V1::Restaurant.scope(params[:id])
        else
            @restaurants = Api::V1::Restaurant.all
        end
        render json: @restaurants, except: [:created_at, :updated_at]
    end

end

    




#  @restaurants = Api::V1::Restaurant.find_by_id(params[:id])
