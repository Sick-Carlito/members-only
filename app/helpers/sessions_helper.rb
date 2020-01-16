module SessionsHelper

	def sign_in(user)
	  session[:user_id] = user.id
	  remember_token = User.new_remember_token
	  cookies.permanent[:remember_token] = remember_token
	  user.update_attribute(:remember_token, User.encrypt(remember_token))
	  self.current_user = user
	end

	def sign_out
		session.delete [:user_id]
		@current_user = nil
	end
end
