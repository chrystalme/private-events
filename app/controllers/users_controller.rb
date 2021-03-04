class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "#{@user.name} created Successfully."
    else
      render :new
    end
  end

  # def show
  #   if session[:user_id]
  #     @user = User.find_by(id: session[:user_id])
  #   end
  # end

  private
  
  def user_params
    params.require(:user).permit(:name)
  end
end