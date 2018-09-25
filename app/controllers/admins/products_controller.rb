class Admins::ProductsController < ApplicationController

  layout "admins"

  def new
    @product = Product.new
    @product.discs.build
  end

  def create
    product = Product.new(product_params)
    product.save

    product.disc_count.times do |num|
       disc = Disc.new
       disc.product_id = product.id
       disc.save
    end

    disc = Disc.find_by(product_id: product.id)
    redirect_to new_admins_product_disc_tune_path(product_id: product.id,disc_id: disc.id)
  end

  def index
    productx = Product.search(params[:search])
    @products = productx.page(params[:page]).reverse_order
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update
    redirect_to
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:image_id, :title, :label_id , :disc, :price, :stock_count, :disc_count,
    discs_attributes: [:id, :disc_id, :_destroy] )
  end
end

# create
# tunn = Tune.new(tune_params)
# tune.disc_id = params[:disc_id]
# tune.save
