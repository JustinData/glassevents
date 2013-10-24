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
      		redirect_to quote_path(@quote)
    	else
      		render :new
    	end
	end

	private
	def quote_params
		params.require(:quote).permit(:provider, :service_id, :price, :info)
	end
end