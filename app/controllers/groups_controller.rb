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

  # def create 
  #   @group = Group.new(groups_params)
  #   if @group.valid?
  #     @group.save 
  #     # byebug
  #     @user = User.find(params[:group][:id])
  #     #tested in byebug and needed to access the join table nested information by tiering into group and id 
  #     redirect_to user_path(@user)
  #   else
  #     render :new 
  #   end 
  # end

  private 

  def id_params 
    Group.find(params[:id])
  end 

  def groups_params
    params.require(:group).permit(:name, :user_id)
  end 

end
