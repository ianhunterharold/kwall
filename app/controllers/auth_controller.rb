class AuthController < ApplicationController


  def login
  end 

  def verify
    @user = User.find_by(email: params[:user][:email])
    
    if @user && @user.email == params[:user][:email]
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      flash[:message] = "you do not exist. How does it feel? create a profile/type in the correct information to login"
      render :login
    end 
  end 

  def logout 
    session.clear
    redirect_to login_path
  end 
end 