require "./config/environment"
require "./app/models/user"
require "./app/models/book"

class BooksController < ApplicationController
  # Create 
  get '/books/new' do 
    erb :'/books/new'
  end

  post '/books' do 
    @book = Book.create(title: parmas[:title], author: params[:author], rating: params[:rating])
    redirect to "books/#{@book.id}"
  end
  # Read 
  # Update 
  # Deletes

end