class GenresController < ApplicationController
  before_action :authenticate_user!

  def index
    @genres = Genre.all
    # @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_path, notice: "You have creted genre successfully."
    else
      render :index
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to genres_path, notice: "You have updated genre successfully."
    else
      render :edit
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:genre_name)
  end

end
