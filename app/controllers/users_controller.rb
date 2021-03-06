require "./config/environment"
require "./app/models/user"
require "./app/models/book"

class UsersController < ApplicationController

  get '/' do 
    session[:error] = false
    erb :index
  end

  get '/signup' do 
    erb :signup
  end

  post "/signup" do
    if User.find_by_username(params[:username])
      session[:error] = true
      redirect to('/failure')
    end

    user = User.new(username: params[:username], password: params[:password])
    
    if user.username != '' && user.save 
      redirect to('/login')
    else 
      redirect to('/failure')
    end
  end

  get '/login' do 
    erb :login 
  end

  post "/login" do
    user = User.find_by(:username => params[:username])
 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/bookshelf"
    else
      redirect "/failure"
    end
  end

  get '/bookshelf' do 
    @user = User.find(session[:user_id])
    erb :bookshelf
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

  get '/failure' do 
    erb :failure
  end

end