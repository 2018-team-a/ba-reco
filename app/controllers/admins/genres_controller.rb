class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!
	layout "admins"

	def index
		@genres = Genre.page(params[:page]).reverse_order
		genresx = Genre.search(params[:search])
		@genres_search = genresx.page(params[:page]).reverse_order
	end

	def new
	  @genre = Genre.new
	end

	def create
	  genre = Genre.new(genre_params)
	  genre.save
	  redirect_to admins_genres_path
	end

	def show
	  @genre = Genre.find(params[:id])
	end

	def edit
	  @genre = Genre.find(params[:id])
	end

	def update
	  genre = Genre.find(params[:id])
	  genre.update(genre_params)
	  redirect_to admins_genre_path(genre.id)
	end

	def destroy
	  @genre = Genre.find(params[:id])
	  @genre.destroy
	  redirect_to admins_genres_path
	end

	private
	def genre_params
	  params.require(:genre).permit(:name)
	end
end
