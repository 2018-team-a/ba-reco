class Admins::TunesController < ApplicationController

  def new
    #フォームをdisc_countの値分、作成する
  	@tune = Tune.new
    @product = Product.find(params[:product_id])
    @discs = @product.discs
  end

  def create
  	# tune = Tune.new(tune_params)
  	# tune.save
  	# redirect_to new_admins_product_disc_tune_path(product.id, disc.id)
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
    params.require(:tune).permit(:title, :artist_id, :genre_id, :disc_id)
  end
end
