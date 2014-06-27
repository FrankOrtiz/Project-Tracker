class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
	 @user = User.new user_params 

	 if @user.save 
	 	redirect_to new_sessions_path, notice: "Account created! Log in to get started!" 
	 else 
	 	redirect_to '/users/new', notice: "Failed to create user"
	 end 
  end


	 private 
  def user_params 
	 params.require(:user).permit(:username, :password, :password_confirmation, :name, :email) 
  end
end
