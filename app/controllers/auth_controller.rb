class AuthController < ApplicationController


  def login
  end 

  def verify
    @user = User.find_by(email: params[:user][:email])
    #byebug
      if @user && @user.email == params[:user][:email]
      redirect_to user_path(@user)
      else 
        flash[:message] = "You do not exist. How does it feel?"
        render :login
      end 
  end 

  private 



end 