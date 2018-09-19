class CartsController < ApplicationController


	def index
		@cart = Cart.all

	end

	# def create
	# 	cart = Cart.new(cart_params)
	# 	cart.save
	# 	redirect_to carts_path

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

	private
		def cart_params
        	params.require(:cart).permit(:product_id, :sheet_number, :user_id)
    	end
end
