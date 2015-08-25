class QuickmenuController < ApplicationController
	def index
			@chickens = Product.order(weekly_sales: :desc).limit(5)
	end
end
