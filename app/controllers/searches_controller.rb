class SearchesController < ApplicationController
  def index
    @search_text = search_params[:title]
    @movies = Movie.where("title LIKE :search", search: "%#{@search_text}%")
    if @movies.empty?
      result = OMDB.title(@search_text)
      @movie = Movie.create(title: result.title, genre: result.genre, year: result.year, synopsis: result.plot, poster: result.poster )
      redirect_to movie_path(@movie)
    end
  end

  private

  def search_params
    params.require(:search).permit(:title)
  end
end
