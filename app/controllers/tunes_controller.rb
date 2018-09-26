class TunesController < ApplicationController

  def new
    @tune = Tune.new
  end

  def create
    tune = Tune.new(tune_params)
    tune.save
    redirect_to tunes_path
  end

  def index
    @tunes = Tune.all
  end

  def show
    @tune = Tune.find(params[:id])
  end

  def edit
    @tune = Tune.find(params[:id])
  end

  def update
    tune = Tune.find(params[:id])
    tune.update(tune_params)
    redirect_to tune_path(tune.id)
  end

  def destroy
    tune = Tune.find(params[:id])
    tune.destroy
    redirect_to tunes_path
  end

  private
  def tune_params
    params.require(:tune).permit(:title, :artist, :genre, :disc, :track_number )
  end
end
