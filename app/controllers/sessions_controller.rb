class SessionsController < ApplicationController
  def new
  end

  def create
  	user =User.find_by(email: params[:session][:email])
  	if user 
  		@current_user = user
  		session[:user_id] = user.id
  		redirect_to user_path(user)
  	else
  		render
  		'new'
  	end
  end

  def destroy
  	@current_user = nil
  	session.delete(:user_id)
  	redirect_to login_path
  end
end
