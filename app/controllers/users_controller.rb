class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "#{@user.name} is created successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  # main controller
  def show
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  private
<<<<<<< HEAD
  def user_params
    params.require(:user).permit(:name, :username)
  end
end
=======

  def user_params
    params.require(:user).permit(:name)
  end
end
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
