class ArtistsController < ApplicationController
	def new
	  @artist = Artist.new
	end

	def create
	  artist = Artist.new(artist_params)
	  artist.save
	  redirect_to new_artist_path(artist.id)
	end

	private
	  def artist_params
      params.require(:artist).permit(:name)
    end
end

