user1 = User.create(username: "user1", password: "pass1")
book1 = Book.create(title: "book1", author: "author1", rating: 5, user: user1)
book2 = Book.create(title: "book2", author: "author2", rating: 4, user: user1)