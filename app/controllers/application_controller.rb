class ApplicationController < ActionController::Base
   
  #layout inheritance 
  #layout "main"

  # #find the product with id stored in session
  # private 
  #   def current_user
  #     @product ||= session[:current_user_id] && Login.find_by(id: session[:current_user_id])
  #   end

  protect_from_forgery with: :exception   
  private   
    def current_user   
      Login.where(id: session[:login_id]).first   
    end   
    helper_method :current_user 
end
