class SessionsController < ApplicationController
	helper_method :logout

	def new
	end

	def create 
		@user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
		if @user 
		 # logged in, hooray 
		 session[:user_id] = @user.id 
		 session[:user_name] = @user.username
		 redirect_to root_path, notice: "Sucessfully logged in"
		else 
			redirect_to root_path, notice: "Failed to log in"
		end 
	end 

	def logged_in
		return true if current_user
		return false
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path, notice: "Logged out"
	end
end
