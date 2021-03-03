class SessionController < ApplicationController

  def create
    user = User.find_by(username: params[:username])

    if user.present?
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully Logged In'
    else
      flash[:alert] = 'Invalid username'
      render :new 
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end