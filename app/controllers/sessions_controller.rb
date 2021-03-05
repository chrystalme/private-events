class SessionsController < ApplicationController
  def new
<<<<<<< HEAD
    
  end

  def create
    user = User.find_by(username: params[:username])

    if user.present?
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully Logged In'
    else
      flash[:alert] = 'Invalid username'
      render :new 
=======
  end

  def create
    user = User.find_by(name: params[:name])
    if user.present?
      session[:user_id] = user.id
      flash[:notice] = 'Logged in successfully'
      redirect_to root_path
    else
      flash[:alert] = 'Invalid credential'
      render :new
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
    end
  end

  def destroy
    session[:user_id] = nil
<<<<<<< HEAD
    redirect_to root_path, notice: 'Logged out'
=======
    flash[:notice] = 'Logged out'
    redirect_to root_path
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
  end
end