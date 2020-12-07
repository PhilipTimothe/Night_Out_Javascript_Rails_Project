class Api::V1::CommentsController < ApplicationController

    def index
        @comments = Api::V1::Comment.all
        render json: @comments, except: [:created_at, :updated_at]
    end

    def show
    end

    def create 
        @comment = Api::V1::Comment.create(comment_params)
        @comment.rating = @comment.rating.to_i
        @comment.save
        render json: @comment, except: [:created_at, :updated_at]
    end


    private 
    
    def comment_params
        params.require(:comment).permit(:title, :comment, :rating)
    end


    
end
