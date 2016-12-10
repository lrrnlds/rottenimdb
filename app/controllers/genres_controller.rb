class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = Movie.where("lower(genre) LIKE :search", search: "%#{@genre.name.downcase}%")
  end
end
