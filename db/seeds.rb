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

movies = ["Doctor Strange", "Toy Story", "Toy Story 2", "Jurassic Park", "Jurassic World", "The Fall", "Rushmore", "Grand Budapest", "Moana", "The Dark Knight", "The Dark Knight Rises"]

movies.each do |movie|
  result = OMDB.title(movie)
  @movie = Movie.create(title: result.title, genre: result.genre, year: result.year, synopsis: result.plot, poster: result.poster )
end
