class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!
	layout "admins"

	def index
		@genres = Genre.page(params[:page]).reverse_order
		genresx = Genre.search(params[:search])
		@genres_search = genresx.page(params[:page]).reverse_order
	end

  def show
	  @genre = Genre.find(params[:id])
	end

	def new
	  @genre = Genre.new
	end

	def create
	  @genre = Genre.new(genre_params)
	  if @genre.save
      flash[:notice] = "ジャンル名登録完了"
  	  redirect_to admins_genres_path
    else
      render :new
    end
	end

	def edit
	  @genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  if genre.update(genre_params)
      flash[:notice] = "ジャンル名編集完了"
	    redirect_to admins_genre_path(genre.id)
    else
      render :edit
    end
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
