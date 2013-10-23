class Quote < ActiveRecord::Base
	# validates :provider, :price, :user_id, :service_id
	
	belongs_to :user
	belongs_to :service
end