class PostsController < ApplicationController

	before_action :signin_required, only: [:new, :create]

	def index
		@Post = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		@post.save
		redirect_to_root_url
	end

	private

    def post_params
      params.require(:post).permit(:title, :body)  
    end


    private
    
    def signed_in_user
      unless signed_in?
        redirect_to signin_url
      end
    end
end
