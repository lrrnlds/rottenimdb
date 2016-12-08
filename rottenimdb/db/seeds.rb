

User.create(first_name: 'Hunter', username:'BootClient', password_digest:'tomtom', email:'tom@tom', trusted: true)
User.create(first_name: 'Roger', username:'GhostEbert', password_digest:'password', email:'e@mail', trusted: true)

User.create(first_name: 'Kelvin', username:'Superman', password_digest:'password', email:'e@mail', trusted: false)
User.create(first_name: 'Zara', username:'TheNicest', password_digest:'password', email:'e@mail', trusted: false)

Movie.create(title: 'The Shawshank Redemption', genre: "action", year: '1942', synopsis:"a really good movie about stuff")
Movie.create(title:'The Godfather', genre: "mob", year: '1942', synopsis:"a really good movie about stuff")
Movie.create(title:'The Dark Knight', genre: "action", year: '1942', synopsis:"a really good movie about stuff")

Review.create(title:'Good Movie', body: 'This movie was so sos so oo soo good', vote_count: 3, movie_id: 1, user_id: 1 )
Review.create(title:'Bad movie', body: 'This movie was so sos so oo soo bad', vote_count: 0, movie_id: 3, user_id: 2 )
Review.create(title:'Meh', body: 'This movie was alright', vote_count: 7, movie_id: 2, user_id: 3 )

Comment.create(title: 'ok', body: 'very good review i agree', vote_count: 1, user_id: 4, commentable_type: "Review", commentable_id: 1)
Comment.create(title: 'not ok', body: 'very bad review i dont agree', vote_count: 3, user_id: 3,commentable_type: "Review", commentable_id: 2)
Comment.create(title: 'i think...', body:'you probably shouldnt see this movie', vote_count: 2, user_id: 4,commentable_type: "Movie", commentable_id: 3)


