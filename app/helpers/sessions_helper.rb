# frozen_string_literal: true

module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end

  def sign_out
    current_user
    session.delete(:user_id)
    cookies.permanent[:remember_token] = nil
    @current_user = nil
  end

  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end
end
