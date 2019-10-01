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



  private 

  def user_params 
    params.require(:user).permit(:name, :title)
  end 

  def id_params 
    User.find(params[:id])
  end 

end
