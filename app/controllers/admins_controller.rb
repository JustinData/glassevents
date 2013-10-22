class AdminsController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@users = User.find(session[:user_id])
		user = User.find(params[:id])
		if user.admin == false 
			redirect_to admins_path 
		end
	end
end