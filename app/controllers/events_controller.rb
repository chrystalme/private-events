class EventsController < ApplicationController

  # before_action :logged_in?, except: [:index]
  def index
    @created_events = Event.all
  end

  def new
    @created_event = current_user.created_events.build
  end

  def create
    @created_event = current_user.created_events.build(event_params)
  
    if @created_event.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @created_events = Event.find_by(id: session[:user_id])
    # @created_events = Event.creator#.order('created_at DESC')
    # @events = Event.new
  end

  private

  def event_params
    params.require(:event).permit(:description, :event_date, :creator_id)
  end
end
