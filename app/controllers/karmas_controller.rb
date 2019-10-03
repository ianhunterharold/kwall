class KarmasController < ApplicationController
  before_action :security
  
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
      redirect_to user_path(@karma.user) 
    else 
      render :new 
    end 
  end  

  def edit
    @karma = Karma.find(params[:id])
  end 

  #update logic not completely tight, needs to ensure that it follows strong params and validations for the min requirements 
  def update  
    @karma = id_param
    if @karma.valid? 
    @karma.update(karma_params)
      redirect_to @karma
    else 
      render :edit
    end 
  end 

  def destroy 
    @karma = id_param
    @karma.destroy
    flash[:delete] = "you deleted karma. someone put effort into that.."
    #flash notice not working, get to work later. 
    redirect_to user_path
  end 


  private 

  def id_param 
    Karma.find(params[:id])
  end 

  def karma_params 
    params.require(:karma).permit(:comment, :user_id)
  end 

end
