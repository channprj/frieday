class QuickmenuController < ApplicationController
	def index
			@chickens = Chicken.all
	end
end
