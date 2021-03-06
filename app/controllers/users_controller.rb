class UsersController < ApplicationController

  def index
    if logged_in?
    @users = User.all
    else 
      redirect_to login_path
    end 
  end 

  def show 
    if logged_in?
      @user = id_params
      @karma = Karma.new
      @prefill = Prefill.new
    else 
      redirect_to login_path
    end 
  end 
  
  def new 
      @user = User.new 
  end 

  def create 
    @user =  User.new(user_params)
    if @user.save 
      redirect_to user_path(@user)
    else 
      render :new 
    end 
  end 

  def edit 
  end 

  def update 
  end 


  private 

  def user_create_params 
    params.require(:user).permit(:name, :email)
  end 

  def user_params 
    params.require(:user).permit(:name, :email, :title)
  end 

  def id_params 
    User.find(params[:id])
  end 


end
