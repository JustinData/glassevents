class UsersController < ApplicationController

	before_action :set_user

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
      		redirect_to user_path(@user)
    	else
      		render :new
    	end 
	end

	def show
	end

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
	end

	def set_user
    	@user = User.find(params[:id])
  	end
end
