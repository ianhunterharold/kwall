class GroupUsersController < ApplicationController
  def new 
    @group_user = GroupUser.new  
  end 

  def create 
    @group_user = GroupUser.new(group_user_params)
    if @group_user.valid? 
      @group_user.save
      redirect_to user_path(@group_user.user_id)
    else
      render :new
    end 
  end 


  private 

  def id_params 
    @group_user = GroupUser.find(params[:id])
  end 

  def group_user_params 
    params.require(:group_user).permit(:group_id, :user_id)
  end 


end
