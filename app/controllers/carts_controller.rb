class CartsController < ApplicationController


	def index

	 	 # @carts = Cart.where(user_id: current_user.id)

	end


	# def cart_ccc
	# 	@user = User.find(current_user.id)
	# 	# @cart = Cart.all
	# 	binding.pry
	# 	@carts = Cart.where(user_id: 2)
	# 	@purchase = @user.purchases.new
	# 	@destinations = @user.destinations

	# 	@destinations_array = []
	# 	@destinations.each do |destination|
	# 		@destinations_array << [destination.destination, destination.id]
	# 	end
	# end

	def cart_ccc
		@purchase = current_user.purchases.new
		@destinations = current_user.destinations
		@destinations_array = []
		@destinations.each do |destination|
 		@destinations_array << [destination.destination, destination.id]
	 	end

	end

	def cart_last

			user = User.find(params[:user_id])
			cart = current_user.carts

			cart.destroy

			purchase = Purchase.new(user_id: current_user.id, destination_id: params[:destination_id],total_price: params[:total_price]
				, status: params[:status] , product_id: params[:id], sheet_number: )

			purchase.save
			
			redirect_to root_path
	end

	def destroy
		cart = Cart.find(params[:id])
		cart.destroy
		redirect_to carts_path
	end

	def add_carts
		add_cart = Cart.new(cart_params)
		 if Cart.exists?(user_id: current_user.id ,product_id: params[:product_id])
		 	cart = Cart.find_by(user_id: current_user.id ,product_id: params[:product_id])
		 	cart.sheet_number = cart.sheet_number + add_cart.sheet_number
		 	cart.save
		else
		 	# cart = Cart.new(cart_params)
			add_cart.product_id = params[:product_id]
			add_cart.user_id = current_user.id
			# 枚数はパラメーター(ストロングパラメーター)
			add_cart.save
		end
			redirect_to carts_path
	end


# ex: def (ここでform受け取って2個の処理をしてtopにredirectさせる)
# end

	private

		def cart_params
        	params.require(:cart).permit(:product_id, :sheet_number, :user_id)
    	end

    	def last
        	params.require(:purchase).permit(:destination_id,)
    	end

    	# def cart_ccc
    	# 	params.require(:user).permit(:user_id)
    	# end

end

