class Admins::ProductsController < ApplicationController

  layout "admins"

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      @product.disc_count.times do |num|
        disc = Disc.new
        disc.product_id = @product.id
        disc.save
      end
        redirect_to edit_admins_product_path(@product.id)
        flash[:notice] = "disc情報を登録して下さい"
    else
      render :new
    end
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

    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to admins_product_path

  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:image, :title, :label_id, :price, :release_date, :stock_count, :disc_count, :disc,
    discs_attributes: [:id, :disc_id, :_destroy] )
  end
end
