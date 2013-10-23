class Service < ActiveRecord::Base
	validates :service_name, presence: true
	has_many :quotes
end