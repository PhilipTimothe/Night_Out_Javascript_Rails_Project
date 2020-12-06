class Api::V1::CommentsController < ApplicationController

    def index
        @comments = Api::V1::Comment.all
        render json: @comments, except: [:created_at, :updated_at]
    end

    def show
        # @comments = 
        render json: @comments, except: [:created_at, :updated_at]
    end
    
end
