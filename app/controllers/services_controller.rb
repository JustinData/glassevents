class ServicesController < ApplicationController
	def new
		@service = Service.new
	end

	def create
		@service = Service.new(service_params)

		if @service.save
      		redirect_to service_path(@user)
    	else
      		render :new
    	end 
	end

	def show
	end

	def index
		@services = Service.all
	end

	private

	def service_params
		params.require(:service).permit(:service_name)
	end
end