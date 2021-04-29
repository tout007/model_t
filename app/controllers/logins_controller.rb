class LoginsController < ApplicationController
  before_action :set_login, only: %i[ show edit update destroy ]

  # GET /logins or /logins.json
  def index
    @logins = Login.all
    #cookies[:current_user] = "user"
    login_user = Login.find_by_id(session[:login_id])
  end

  # GET /logins/1 or /logins/1.json
  def show
  end

  # GET /logins/new
  def new
    @login = Login.new
  end

  # GET /logins/1/edit
  def edit
  end

  # POST /logins or /logins.json
  def create
    @login = Login.new(login_params)

    if @login.save   
      session[:login_id] = @login.id   
      redirect_to @login, notice: 'Login successfully created.'   
    else   
      render :new   
    end   
  end 
    # if @user = Login.authenticate(params[:usrename], params[:password])
    #    cookies[:current_user_id] = @user.id
    #   redirect_to root_url
    # end
     
    # if @login.save
    #   flash[:notice] = "Thanks for your login"

    #   if params[:username]
    #     cookies[:username] = @login.username
    #   # else
    #   #   cookies.delete(:username)
    #   end
    #   render action: "show" 
    #   else
    #   render action: "new"   
    # end 
  
    # respond_to do |format|
    #   if @login.save
    #     format.html { redirect_to @login, notice: "Login was successfully created." }
    #     format.json { render :show, status: :created, location: @login }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @login.errors, status: :unprocessable_entity }
    #   end
    # end

  # PATCH/PUT /logins/1 or /logins/1.json
  def update
    respond_to do |format|
      if @login.update(login_params)
        format.html { redirect_to @login, notice: "Login was successfully updated." }
        format.json { render :show, status: :ok, location: @login }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logins/1 or /logins/1.json
  def destroy
    @login.destroy
    respond_to do |format|
      format.html { redirect_to logins_url, notice: "Login was successfully destroyed." }
      format.json { head :no_content }
    end
    cookies.delete(:current_user_id)
    @_current_user = nil
    flash[:notice] = "You have successfully logged out"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      @login = Login.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def login_params
      params.require(:login).permit(:username, :password)
    end
    

end
