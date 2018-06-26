module SessionsHelper

	def current_user
		if user = @current_user
			user
		elsif user_id = session[:user_id]
			user = User.find(user_id)
		else
			nil
		end
	end

	def logged_in?
		!current_user.nil?
	end
end
