class SessionsController < ApplicationController
  def new
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
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to root_path
  end
end