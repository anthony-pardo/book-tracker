require "./config/environment"
require "./app/models/user"
require "./app/models/book"

class BooksController < ApplicationController
  # Create 
  get '/books/new' do 
    erb :'/books/new'
  end

  post '/books' do 
    @book = Book.create(title: params[:title], author: params[:author], rating: params[:rating], user: current_user)
    redirect to "books/#{@book.id}"
  end
  # Read 
  get '/books/:id' do 
    @book = Book.find(params[:id])
    erb :'/books/show'
  end
  # Update 
  # Deletes

end