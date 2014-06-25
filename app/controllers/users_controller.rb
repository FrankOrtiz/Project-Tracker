class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
	 @user = User.new user_params 

	 if @user.save 
	 	redirect_to root_path, notice: "Created user" 
	 else 
	 	redirect_to '/users/new', notice: "Failed to create user"
	 end 
  end


	 private 
  def user_params 
	 params.require(:user).permit(:username, :password, :password_confirmation) 
  end
end
