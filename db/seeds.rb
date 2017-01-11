genres = %w[Action  Adventure Animation Biography
Comedy  Crime Documentary Drama
Family  Fantasy Game-Show History
Horror  Music Musical Mystery
News  Reality-TV  Romance Sci-Fi
Sitcom  Sport Talk-Show Thriller
War Western]

genres.each do |genre|
  Genre.create(name:genre)
end
