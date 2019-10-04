class GroupUsersController < ApplicationController
  before_action :security
  
  def show
    @group_user = GroupUser.find(params[:id])
  end 

  def index 
    @group_users = GroupUser.all
  end 

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

 
    def destroy 
      @group_user = id_params
      user_id = @group_user.user.id
      @group_user.destroy
      redirect_to user_path(user_id)
    end 



  private 

  def id_params 
    @group_user = GroupUser.find(params[:id])
  end 

  def group_user_params 
    params.require(:group_user).permit(:group_id, :user_id)
  end 


end
