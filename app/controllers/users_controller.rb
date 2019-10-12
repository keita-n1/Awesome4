class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = @user.coordinates.order("created_at DESC")
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :gender, :age, :height, :profile, :profile_image)
  end
end
