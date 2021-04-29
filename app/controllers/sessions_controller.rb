class SessionsController < ApplicationController
  def new
  end

  def create
    login = Login.find_by_username(params[:username])   
      
    if login && login.authenticate(params[:password])   
      session[:login_id] = login.id   
      redirect_to root_url, notice: 'Logged in!'   
    else   
      flash.now[:danger] = 'Invalid email/password combination'
      render :new   
    end   
  end   

  def destroy   
    session.delete(:login_id)
    session[:login_id] = nil 
    flash[:success] = "You have logged out"  
    redirect_to logins_url
  end   

  def authenticate( password)
  #user = User.find_by_name(name)
    if login.find_by_password(password)#match_password(password)
      return true
    else
      return false
    end
  end
end
