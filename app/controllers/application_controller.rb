class ApplicationController < ActionController::Base
   
  #layout inheritance 
  #layout "main"

  # before_action do |controller|
  #   unless controller.send(@login)
  #     flash[:error] = "You must be logged in to access this section"
  #     redirect_to new_login_url
  #   end
  # end

  
  protect_from_forgery with: :exception   
  private   
    def current_login   
      Login.where(id: session[:login_id]).first   
    end   
  
  helper_method :current_login 
end
