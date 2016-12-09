#  User.create(name: 'Hunter', password:'tomtom', email:'tom@tom', trusted: true)
#  User.create(name: 'Roger', password_digest:'password', email:'a@mail', trusted: true)

#  User.create(name: 'Kelvin', password:'password', email:'d@mail', trusted: false)
# User.create(name: 'Zara', password:'password', email:'e@mail', trusted: false)

# shawshank = OMDB.title('The Shawshank Redemption')
# Movie.create(title: shawshank.title, genre: shawshank.genre, year: shawshank.year, synopsis: shawshank.plot, poster: shawshank.poster )


# dark_night = OMDB.title('The Dark Knight')
# Movie.create(title: dark_night.title, genre: dark_night.genre, year: dark_night.year, synopsis: dark_night.plot, poster: dark_night.poster )

# god_father = OMDB.title('The Godfather')
# Movie.create(title: god_father.title, genre: god_father.genre, year: god_father.year, synopsis: god_father.plot, poster: god_father.poster )

#  arrival = OMDB.title('arrival')
# Movie.create(title: arrival.title, genre: arrival.genre, year: arrival.year, synopsis: arrival.plot, poster: arrival.poster )

# moana = OMDB.title('Moana')
#  Movie.create(title: moana.title, genre: moana.genre, year: moana.year, synopsis: moana.plot, poster: moana.poster )

# # # Movie.create(title: 'The Shawshank Redemption', genre: "action", year: '1942', synopsis:"a really good movie about stuff" )
# # # Movie.create(title:'The Godfather', genre: "mob", year: '1942', synopsis:"a really good movie about stuff")
# # # Movie.create(title:'The Dark Knight', genre: "action", year: '1942', synopsis:"a really good movie about stuff")

#  Review.create(title:'Good Movie', body: 'This movie was so sos so oo soo good', vote_count: 3, movie_id: 1, user_id: 1 )
#  Review.create(title:'Bad movie', body: 'This movie was so sos so oo soo bad', vote_count: 0, movie_id: 3, user_id: 1 )
#  Review.create(title:'Meh', body: 'This movie was alright', vote_count: 7, movie_id: 2, user_id: 1 )

#  Review.create(title:'Fantastic', body: 'Best move of the year!!!! ', vote_count: 7, rating: 5, movie_id: 3, user_id: 1 )

#  Comment.create(title: 'ok', body: 'very good review i agree', vote_count: 1, user_id: 2, commentable_type: "Review", commentable_id: 1)
#  Comment.create(title: 'not ok', body: 'very bad review i dont agree', vote_count: 3, user_id: 2,commentable_type: "Review", commentable_id: 2)
#  Comment.create(title: 'i think...', body:'you probably shouldnt see this movie', vote_count: 2, user_id: 2,commentable_type: "Movie", commentable_id: 3)

#more movies
# a = ['bad santa','allied','doctor strange','miss Sloane']


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
