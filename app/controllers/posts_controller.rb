class PostsController < ApplicationController

	before_action :signin_required, only: [:new, :create]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		@post.save
		redirect_to root_url
	end

	private

    def post_params
      params.require(:post).permit(:title, :body)  
    end

    private
    
    def signin_required
      unless signed_in?
        redirect_to signin_url
      end
    end
end
