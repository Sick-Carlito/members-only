# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  attr_writer :current_user

  helper_method :current_user

  private

  def signin_required
    return unless signed_in?
      flash[:notice] = 'Sign in to create a Post'
      redirect_to root_url
  end

  def signed_in?
    current_user
  end

  helper_method :signed_in?
end
