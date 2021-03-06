class UsersController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :verify_authenticity_token
  before_action :set_user, only: [:orders,:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  
  def orders
    @orders = @user.orders
  end
  
  def index
    @users = User.order(:name)

    respond_to do |format|
      format.html # index.hrml.erb
      format.json {render json: @users}
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
     @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    params.permit!
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to login_url, notice: "User #{@user.name} was successfully created." }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    params.permit!
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_url, notice: 'User #{@user.name} was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
    rescue Exeption => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end


    # Use callbacks to share common setup or constraints between actions.
    def set_user
      params.permit!
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id,:name, :password_digest)
    end
end
