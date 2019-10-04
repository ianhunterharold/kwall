class PrefillsController < ApplicationController
  before_action :security
  
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
      redirect_to user_path(@prefill.user)
    else 
      render :new 
    end 
  end 


  def destroy 
    @prefill = id_param
    @prefill.destroy
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
