class QuickmenuController < ApplicationController
	def index
			@products = Product.order(weekly_sales: :desc).limit(3)
	end
end
