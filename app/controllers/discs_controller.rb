class DiscsController < ApplicationController

  layout "admins"

def idex

end

  def edit
    @disc = Disc.find(params[:id])
    @disc.tunes.build
  end

  def update
    @disc = Disc.find(params[:id])
    if @disc.update(disc_params)
      redirect_to admins_disc_path(@disc)
    else
      render :edit
    end
  end

  private
    def disc_params
        params.require(:disc)
					.permit(
            :id,
						tunes_attributes: [
							:title,
              :track_number,
              :id,
							:_destroy
							]
					)
    end

end
