class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    # p "hello"
  end

  def new
    @movie = Movie.new
    # p "hello"
  end

  def create
    if @movie.exists?
      render 'show'
    else
      @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to @movie
      else
        redirect_to root_path
      end
    end
  end

  def show
    @movie = Movie.find(params[:id])
    # p "hello"
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :genre, :year, :synopsis, :poster)
    end

end
