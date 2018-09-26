class Admins::ArtistsController < ApplicationController

	layout "admins"

	def index
	  @artists = Artist.all
	end

	def show
	  @artist = Artist.find(params[:id])
	end

	def new
	  @artist = Artist.new
	end

	def create
	  @artist = Artist.new(artist_params)
	  if @artist.save
			flash[:notice] = "アーティスト登録完了"
		  redirect_to new_admins_artist_path
		else
			@artists = Artist.all
			render :new
		end
	end

	def edit
	  @artist = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
	  if @artist.update(artist_params)
			flash[:notice] = "アーティスト登録完了"
	  	redirect_to admins_artist_path(@artist.id)
		else
			render :edit
		end
	end

	def destroy
	  artist = Artist.find(params[:id])
	  artist.destroy
	  redirect_to artists_path
	end

	private
	def artist_params
	  params.require(:artist).permit(:name)
	end
end
