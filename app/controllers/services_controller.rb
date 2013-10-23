class ServicesController < ApplicationController
	before_action :set_user, :authorized!, only: [:create, :new]

	def new
		# binding.pry
		@service = Service.new
	end

	def create
		@service = Service.new(service_params)

		if @service.save
      		redirect_to service_path(@service.id)
    	else
      		render :new
    	end 
	end

	def show
		# binding.pry
		@service = Service.find(params[:id])
	end

	def index
		@services = Service.all
	end


	private

	def service_params
		params.require(:service).permit(:service_name)
	end

	def authorized!
		unless @user.admin == true
			redirect_to services_path
		end
	end

	def set_user
    	@user = User.find(session[:user_id])
  	end
end