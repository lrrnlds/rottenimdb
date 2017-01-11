class SearchesController < ApplicationController
  def index
    @search_text = search_params[:title]
    @movies = Movie.where("lower(title) LIKE :search", search: "%#{@search_text.downcase}%")
    if @movies.empty?
      result = OMDB.title(@search_text)
      p result
      if result.response == "False"
        render "notfound"
      else
        @movie = Movie.create(title: result.title, genre: result.genre, year: result.year, synopsis: result.plot, poster: result.poster )
        redirect_to movie_path(@movie)
      end
    end
  end

  private

  def search_params
    params.require(:search).permit(:title)
  end
end
