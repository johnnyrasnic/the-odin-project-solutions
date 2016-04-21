class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit
    @user = User.find_by(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
