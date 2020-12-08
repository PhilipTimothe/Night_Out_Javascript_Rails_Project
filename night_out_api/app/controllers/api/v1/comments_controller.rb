class Api::V1::CommentsController < ApplicationController

    def index
        @comments =  if params[:restaurant_id]
            Api::V1::Comment.where(restaurant_id: params[:restaurant_id])
        end
        render json: @comments, except: [:created_at, :updated_at]
    end

    def create 
        @comment = Api::V1::Comment.create(comment_params)
        @comment.rating.to_i
        @comment.save
        render json: @comment, except: [:created_at, :updated_at]
    end


    private 
    
    def comment_params
        params.require(:comment).permit(:title, :comment, :rating)
    end


    
end
