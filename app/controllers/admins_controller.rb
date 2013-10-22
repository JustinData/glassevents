class AdminsController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@users = User.find(session[:user_id])
	end
end