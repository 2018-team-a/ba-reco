class ProductsController < ApplicationController
  layout 'admins'

    def show
        @product = Product.find(params[:id])
        @cart = Cart.new

    end


  def index
  	productx = Product.search(params[:search])
      @products = productx.page(params[:page]).reverse_order
  end


	def new
		@product = Product.new
	end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to new_product_path
  end

  def search
  	@products = Product.search(params[:search])
  	redirect_to products_path
  end


	private
    def product_params
      params.require(:product).permit(:title, :label, :price, :image, :release_date, :stock_count)
    end



end
