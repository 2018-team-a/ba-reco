class PurchaseSinglesController < ApplicationController
	def show
		@cart = Cart.find(params[:id])
		@user = @cart.user
		@purchase = @user.purchases.new

		@destinations = @user.destinations

		@destinations_array = [] 
		@destinations.each do |destination|
			@destinations_array << [destination.destination, destination.id]
		end

	end

end
