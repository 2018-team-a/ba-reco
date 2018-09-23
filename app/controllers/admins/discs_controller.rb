class Admins::DiscsController < ApplicationController

  def new
    # .allではない　回数分を表示する
    binding.pry
    @product = Product.find(params[:product_id])
    @discs = [].fill(Disc.new, 0, 5)
  end

  def create
    disc = Disc.new(disc_params)
    disc.save
    redirect_to discs_path
  end

  def index
    @discs = Disc.all
  end

  def show
    @disc = Disc.find(params[:id])
  end

  def edit
    @disc = Disc.find(params[:id])
  end

  def update
    disc = Disc.find(params[:id])
    disc.update(disc_params)
    redirect_to disc_path(disc.id)
  end

  def destroy
    disc = Disc.find(params[:id])
    disc.destroy
    redirect_to discs_path
  end

  private
  def disc_params
    params.require(:disc).permit(:product_id)
  end
end