class CartsController < ApplicationController


	def index
		@carts = Cart.where(user_id: current_user.id).page(params[:page]).reverse_order
	 	 #@carts = Cart.where(user_id: current_user.id)

	end

	def update
		carts = Cart.find(params[:id])
		carts.update(cart_params)
		redirect_to carts_path
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
		if current_user.carts.present?
		@purchase = current_user.purchases.new
		@destinations = current_user.destinations
			# if @destinations.present?
				@destinations_array = []
				@destinations_array << [current_user.address,current_user.address]
				@destinations.each do |destination|
	 			@destinations_array << [destination.destination,destination.destination]
	 				end
			# else
			# 	@destinations_array = []

			# 	@destinations_array << [current_user.address,current_user.address]
			# end
		else
			redirect_to root_path
	 	end

	end

	def cart_last

		carts = Cart.where(params[:id])


		purchase = Purchase.new(user_id: current_user.id, total_price: params[:total_price], destination: purchase_params[:destination], status: 0)

        purchase.save
        carts.each do |cart|
        purchase_single = PurchaseSingle.new(purchase_id: purchase.id, product_id: cart.product_id, sheet_number: cart.sheet_number)
        purchase_single.save
        cart.product.stock_count -= cart.sheet_number
        cart.product.save
		cart.destroy

		end
		redirect_to root_path, notice: "まいど！！"
	end

	def destroy
		cart = Cart.find(params[:id])
		cart.destroy
		redirect_to carts_path
	end

	def add_carts
		if params["cart"]["sheet_number"] == ""
			# flash[:notice] = "カートに商品入れてください"
			redirect_to root_path, notice: "何か入れて！！！"
		else
			add_cart = Cart.new(cart_params)
				product = Product.find(params[:product_id])
				 if Cart.exists?(user_id: current_user.id ,product_id: params[:product_id])
				 	cart = Cart.find_by(user_id: current_user.id ,product_id: params[:product_id])
				 	cart.sheet_number = cart.sheet_number + add_cart.sheet_number
				 	if cart.sheet_number <= product.stock_count
				 		cart.save
				 		redirect_to carts_path
				 	else
				 		redirect_to product_path(product), notice: "在庫は#{product.stock_count}枚だよ！"
				 	end

				else
				 	# cart = Cart.new(cart_params)
					add_cart.product_id = params[:product_id]
					add_cart.user_id = current_user.id
					# 枚数はパラメーター(ストロングパラメーター)
					if add_cart.sheet_number < product.stock_count
				 		add_cart.save
						redirect_to carts_path
				 	else
				 		redirect_to product_path(product), notice: "在庫は#{product.stock_count}枚だよ！"
				 	end
				end
		end
	end



	private
	    # cart_params[]

		def cart_params
        	params.require(:cart).permit(:product_id, :sheet_number, :user_id)
    	end

    	def purchase_params
        	params.require(:purchase).permit(:destination, :status, :user_id, :total_price)
    	end

    	def purchase_single_params
            params.require(:purchase_single).permit(:purchase_id, :product_id, :sheet_numer)
    	end
    	# def cart_ccc
    	# 	params.require(:user).permit(:user_id)
    	# end

end
