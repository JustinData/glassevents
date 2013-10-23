class AdminsController < ApplicationController

	before_action :set_user, only: [:show]
	before_action :authenticated!, :authorized!, only: [:new]

	def index
		@users = User.all
	end

	def show
		@users = User.find(session[:user_id])
		
		if @user.admin == false 
			redirect_to admins_path 
		end
	end

	def new

	end

	def promote
		user = User.find(params[:id])
		user.admin = true
		user.save
		redirect_to new_admin_path
	end

	private

	def authorized!
		@user = User.find(session[:user_id])
    	unless @user.owner == true
    		redirect_to admins_path(session[:user_id])
    	end
  	end
	
	def set_user
    	@user = User.find(params[:id])
  	end
end