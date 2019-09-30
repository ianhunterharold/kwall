class KarmasController < ApplicationController
  def index 
    @karmas = Karma.all 
  end 

  def show 
    # @user = User.find(params[:id])
    @karma = id_param
  end 

  def new 
    @karma = Karma.new
  end 

  def create 
    @karma = Karma.new(karma_params) 
    if @karma.valid?
      @karma.save 
      redirect_to karmas_path 
    else 
      render :new 
    end 
  end   


  private 

  def id_param 
    Karma.find(params[:id])
  end 

  def karma_params 
    params.require(:karma).permit(:comment, :user_id)
  end 

end
