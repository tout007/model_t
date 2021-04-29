class RegistrationController < ApplicationController

  def create  
    if user = Login.authenticate(params[:username], params[:password])  
      # Save the user ID in the session so it can be used in  
      # subsequent requests  
      session[:current_login_id] = user.id  
      redirect_to root_url  
   end  
  end  

  def destroy  
    # Remove the user id from the session  
    @_current_user = session[:current_login_id] = nil  
    redirect_to root_url  
  end  
end
