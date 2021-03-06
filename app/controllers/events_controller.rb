# Event controller class
class EventsController < ApplicationController
  before_action :logged_in?, except: [:index]
  def new
    @created_event = current_user.created_events.build
  end

  def index
    @created_events = Event.all
  end

  def show
    @created_event = Event.find(params[:id])
  end

  def create
    @created_event = current_user.created_events.build(event_params)
    # @created_event.attendees << current_user
    if @created_event.save
      flash[:notice] = "#{@created_event.title} was successfully created."
      redirect_to root_path
    else
      flash[:alert] = 'You need to create a valid event'
      render :new
    end
  end

  def attend
    @created_event = Event.find(params[:id])
    @created_event.attendees << current_user
    flash[:notice] = "You are attending :#{@created_event.title}"
    redirect_to current_user
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :location, :creator_id)
  end
end
