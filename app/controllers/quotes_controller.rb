class QuotesController < ApplicationController

	def show
		@quote = Quote.find(params[:id])
		@service = Service.find(@quote.service_id)
	end

	def index
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quote_params)
		@quote.user_id = session[:user_id]
		if @quote.save
      		redirect_to user_path(session[:user_id])
    	else
      		render :new
    	end
	end

	def choose
		@quote = Quote.find(params[:id])
		@quote.chosen = true
		@quote.save
		redirect_to user_path(session[:user_id])
	end

	private
	def quote_params
		params.require(:quote).permit(:provider, :service_id, :price, :info)
	end
end