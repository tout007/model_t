class SessionsController < ApplicationController
  def new
  end

  def create
    user = Login.find_by_username(params[:username])   
    if user && user.authenticate(params[:password])   
      session[:login_id] = user.id   
      redirect_to root_url, notice: 'Logged in!'   
    else   
      render :new   
    end   
  end   
  def destroy   
    session[:login_id] = nil   
    redirect_to root_url, notice: 'Logged out!'   
  end   
end
