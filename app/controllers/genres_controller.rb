class GenresController < ApplicationController

  before_action :set_genre, only: [ :show, :edit, :update, :destroy ]

  before_action :require_signin, except: [:index, :show]

  before_action :require_admin, except: [:index, :show]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre, notice: "Genre was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @movie_with_genre = @genre.movies
  end

  def edit
  end

  def update
    if @genre.update(genre_params)
      redirect_to @genre, notice: "Genre was successfully updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @genre.destroy
    redirect_to genres_url, status: :see_other
  end

private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find_by!(slug: params[:id])
  end
end
