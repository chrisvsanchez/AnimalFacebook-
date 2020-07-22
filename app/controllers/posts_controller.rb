class PostsController < ApplicationController

    before_action :find_post, only: [:show, :edit, :destroy, :update]

    def index
        @posts = Post.all
    end

    def show
        
        @comment=Comment.new
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to @post.post 
    end

    def edit
        
    end

    def update 
        @post.update(post_params)
        redirect_to @post.post
    end

    def destroy 
        @post.destroy
    end

    private 

    def post_params
        params.require(:posts).permit(:content,:title)
    end

    def find_post
        @post = Post.find(params[:id])
    end

end
