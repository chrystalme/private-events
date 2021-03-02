class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.all.order(created_at: :desc)
  end

  private
  def user_params
    params.require(:user).permit(:name, :username)
  end
end
