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
    @disc.update(disc_params)
    redirect_to admins_edit_disc_path(@disc)
  end

  private
    def disc_params
        params.require(:disc)
					.permit(
            :id,
						tunes_attributes: [
							:title,
              :disc_id,
              :id,
							:_destroy
							]
					)
    end

end
