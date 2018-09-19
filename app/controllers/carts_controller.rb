class CartsController < ApplicationController


	def index
		@carts = Cart.all
	end

	def create
		cart = Cart.new(cart_params)
		cart.save
		redirect_to carts_path

	def add_carts
		product = Product.find(:pr)
		if current_user.id && 



	end


end
