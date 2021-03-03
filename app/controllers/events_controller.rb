class EventsController < ApplicationController

  # before_action :authenticate_user!, only: %i[new create]
  def new
    @created_event = Event.new#current_user.created_events.build
  end

  def create
    @created_event = Event.new(event_params)#created_events.build(event_params)

    if @created_event.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @created_events = Event.all#.order('created_at DESC')
    # @events = Event.new
  end

  private

  def event_params
    params.require(:event).permit(:event_date, :description, :creator_id)
  end
end
