class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_path
    else
      flash.alert = ["Incorrect name or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_back(fallback_location: login_path)
  end

end
