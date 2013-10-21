class UsersController < ApplicationController

	before_action :set_user, :authenticated!, :authorized! , except: [:new, :create] #:set_user,

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
		@user = User.find(params[:id])
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
	end

	def authorized!
    	unless @user.id == session[:user_id]
    		redirect_to user_path(session[:user_id])
    	end
  	end
	
	def set_user
    	@user = User.find(params[:id])
  	end
end
