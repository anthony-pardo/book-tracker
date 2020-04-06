class UsersController < ApplicationController
  get '/' do 
    erb :index
  end

  get '/signup' do 
    erb :signup
  end

  post "/signup" do
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
      redirect "/account"
    else
      redirect "/failure"
    end
  end

end