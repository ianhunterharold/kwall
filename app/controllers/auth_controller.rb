class AuthController < ApplicationController


  def login
  end 

  def verify
    @user = User.find_by(email: params[:user][:email])
    session[:user_id] = @user.id
    if @user && @user.email == params[:user][:email]
      redirect_to user_path(@user)
    else 
      flash[:message] = "you do not exist. How does it feel? create a profile to join in on the fun."
      render :login
    end 
  end 

  def logout 
    session.clear
    redirect_to login_path
  end 
end 