module ApplicationHelper
 def movieposter(id)
   @movie = Movie.find(id)
   if @movie.poster == "N/A"
     return "movienotfound.gif"
   else
    return @movie.poster
  end
 end

 def reviewer_name(id)
  @user = User.find(id)
  return @user.name.capitalize
 end
end
