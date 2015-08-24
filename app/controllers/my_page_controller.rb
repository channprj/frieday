class MyPageController < ApplicationController
	def show
		@chicken = Product.where(product_id: 102)
	end
end
