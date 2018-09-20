class ProductsController < ApplicationController


    def show
        @product = Product.find(params[:id])
        @cart = Cart.new
    end

    def index
        @products = Product.search(params[:search])
        @cart = Cart.new
    end

    def create
        cart = Cart.new(cart_params)
        cart.save
        redirect_to carts_path
    end

    def search
        @products = Product.search(params[:search])
        redirect_to products_path
    end

end
