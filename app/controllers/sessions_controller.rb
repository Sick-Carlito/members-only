class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authentication(params [:session] [:password])
  		sign_in user
  		redirect_to_root_path
  	else
  	  flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
  	  render 'new'
  	end
  end

  def destroy
  	sign_out
  	redirect_to_root_url
  end
end
