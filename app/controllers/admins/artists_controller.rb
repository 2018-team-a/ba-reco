class Admins::ArtistsController < ApplicationController
  before_action :authenticate_admin!
	layout "admins"

	def index
		@artists = Artist.page(params[:page]).reverse_order
		artistsx = Artist.search(params[:search])
		@artists_search = artistsx.page(params[:page]).reverse_order
	end

	def show
	  @artist = Artist.find(params[:id])
    @tune = Tune.all
	end

	def new
	  @artist = Artist.new
	end

	def create
	  @artist = Artist.new(artist_params)
	  if @artist.save
			flash[:notice] = "アーティスト名登録完了"
	  	redirect_to admins_artists_path
		else
			render :new
		end
	end

	def edit
	  @artist = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
	  if @artist.update(artist_params)
			flash[:notice] = "アーティスト名編集完了"
	  	redirect_to admins_artist_path(@artist.id)
		else
			render :edit
		end
	end

	def destroy
	  @artist = Artist.find(params[:id])
	  @artist.destroy
	  redirect_to admins_artists_path
	end

	private
	def artist_params
	  params.require(:artist).permit(:name)
	end
end
