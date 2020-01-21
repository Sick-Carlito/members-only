# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :signin_required, only: %i[new create]

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
    redirect_to signin_url unless signed_in?
  end
end
