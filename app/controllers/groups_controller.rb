class GroupsController < ApplicationController
  
  def new 
    @group = Group.new
  end 
  
  def index 
    @groups = Group.all 
  end 

  def show
    @group = id_params
  end 

  def create 
    @group = Group.new(groups_params)
    if @group.valid?
      @group.save 
      # @user = User.find(params[:id])
      redirect_to user_path(@group.user_id)
    else
      render :new 
    end 
  end

  private 

  def id_params 
    Group.find(params[:id])
  end 

  def groups_params
    params.require(:group).permit(:name, :user_id)
  end 

end
