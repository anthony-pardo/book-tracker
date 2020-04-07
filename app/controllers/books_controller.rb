require "./config/environment"
require "./app/models/user"
require "./app/models/book"

class BooksController < ApplicationController
  # Create 
  get '/books/new' do 
    erb :'/books/new'
  end
  # Read 
  # Update 
  # Deletes

end