class UsersController < ApplicationController
  def index
    @users = User.all
  end 

  def show 
    @user = id_params
  end 
  



  private 

  def id_params 
    User.find(params[:id])
  end 

end
