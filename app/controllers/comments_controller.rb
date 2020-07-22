class CommentsController < ApplicationController
before_action :find_comment, only: [:show, :edit, :destroy, :update]

    def index
        @comments = Comment.all
    end

    def show
        
    end

    def new
        @comment = Comment.new
    end

    def create
        # byebug
        @comment = Comment.create(comment_params)
        redirect_to @comment.post 
    end

    def edit
        
    end

    def update 
        @comment.update(comment_params)
        redirect_to @comment.post
    end

    def destroy 
        @post=@comment.post
        @comment.destroy
        redirect_to @post
    end

    private 

    def comment_params
        params.require(:comment).permit(:content, :post_id, :animal_id)
    end

    def find_comment
        @comment = Comment.find(params[:id])
    end
end
