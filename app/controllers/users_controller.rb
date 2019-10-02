class UsersController < ApplicationController
  
  def index
    @users = User.all
  end 

  def show 
    @user = id_params
  end 
  
  def new 
    @user = User.new 
  end 

  def create 
    @user =  User.new(user_create_params)
    if @user.save 
      redirect_to user_path(@user)
    else 
      render :new 
      "Incorrect email address, fix it."
    end 
  end 


  private 

  def user_create_params 
    params.require(:user).permit(:name, :email)
  end 

 def user_params 
    params.require(:user).permit(:name, :title, :email)
  end 

  def user_params 
    params.require(:user).permit(:name, :title, :email)
  end 

  def id_params 
    User.find(params[:id])
  end 

end
