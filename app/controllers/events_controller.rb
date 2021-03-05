class EventsController < ApplicationController
  before_action :logged_in?, except: [:index]
  def new
    @created_event = current_user.created_events.build
  end

  def index
    @created_events = Event.all
  end

  def show
    @created_event = Event.find
  end

  def create
    @created_event = current_user.created_events.build(event_params) 

    if @created_event.save
      flash[:notice] = "#{@created_event.title} was successfully created."
      redirect_to root_path
    else
      flash[:alert] = 'You need to create a valid event'
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :location, :creator_id)
  end
end
