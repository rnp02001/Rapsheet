class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @states = State.all
    @comments = Comment.all.where(user_id: current_user.id)
  end

  def update
    @user = User.find params[:id]
    @user.update(user_params)
    redirect_to user_path
  end

  private

   def user_params
      params.require(:user).permit(:state_id)
   end
end
