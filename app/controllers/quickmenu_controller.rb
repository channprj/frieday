class QuickmenuController < ApplicationController
	def index
			@chickens = Chicken.order(weekly_sales: :desc).limit(3)
	end
end
