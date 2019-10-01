class PrefillsController < ApplicationController
  def index 
    @prefills = Prefill.all 
  end 

  def new 
    @prefill = Prefill.new
  end 

  def show
    @prefill = id_params
  end 

  def create
    @prefill = Prefill.new(prefill_params) 
    if @prefill.valid?
      @prefill.save 
      redirect_to prefills_path 
    else 
      render :new 
    end 
  end 



  def destroy 
    @prefill = id_param
    @prefill.destroy
    # flash[:notice] = "Your Karma that you gave someone, that made their day, is now deleted."
    #flash notice not working, get to work later. 
    redirect_to @prefill
  end 

  private 

  def id_params 
    Prefill.find(params[:id])
  end 

  def prefill_params 
    params.require(:prefill).permit(:selection, :user_id)
  end 


end