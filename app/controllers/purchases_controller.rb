class PurchasesController < ApplicationController
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

	def create
			cart = Cart.find(params[:cart_id])
			purchase = Purchase.new(user_id: current_user.id, destination_id: params[:destination_id])
			purchases.user_id = current_user.id

			purchases.save
			cart.destroy
			redirect_to root_path
	end

	def purchase_single_params
        params.require(:purchase).permit(:destination_id)
    end
end
