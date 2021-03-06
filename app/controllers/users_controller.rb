class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @sounds = @user.sounds
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user =User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

end
