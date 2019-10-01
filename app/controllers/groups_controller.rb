class GroupsController < ApplicationController
  def index 
    @groups = Group.all 
  end 

  def show
    @group = id_params
  end 

  private 

  def id_params 
    Group.find(params[:id])
  end 

  def groups_params
    params.require(:group).permit(:name)
  end 

end
