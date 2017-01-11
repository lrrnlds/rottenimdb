module ApplicationHelper
 def movieposter(id)
   @movie = Movie.find(id)
   if @movie.poster == "N/A"
     return "movienotfound.gif"
   else
    return @movie.poster
  end
 end
end
