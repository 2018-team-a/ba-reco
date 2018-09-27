class Admins::TunesController < ApplicationController
  before_action :authenticate_admin!
  def new
  	@tune = Tune.new
    @product = Product.find(params[:product_id])
    @discs = @product.discs
  end

  def create
  	tune = Tune.new(disc_id: params[:disc_id], artist_id: params["tune"]["artist_id"], title: params["tune"]["title"], genre_id: params["tune"]["genre_id"])
    product = Product.find(params[:product_id])
    disc = Disc.find(params[:disc_id])
    tune.save
  	redirect_to new_admins_product_disc_tune_path(product_id: product.id, disc_id: disc.id)
  end



  def index
  end

  def show
  end

  def edit
  end

  def update
  end


  private
  def tune_params
    params.require(:tune).permit(:title, :artist_id, :genre_id)
  end
end
