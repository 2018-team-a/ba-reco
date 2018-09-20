class Admins::ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to new_admins_product_disc_path(product.id)
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:title, :label_id , :disc , :price , :stock_count )
  end
end
