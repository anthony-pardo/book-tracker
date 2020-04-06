class UsersController < ApplicationController
  get '/' do 
    erb :index
  end

  get '/signup' do 
    erb :signup
  end

  get '/login' do 
    erb :login 
  end

end