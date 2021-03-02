class EventsController < ApplicationController

  before_action :authenticate_user!, only: %i[new create]
  def new
    @events = current_user.events.build
  end

  def create
    @events = current_user.events.build(event_params)

    if @events.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def show
    @events = Event.all.order('created_at DESC')
    @events = Event.new
  end

  private

  def event_params
    params.require(:event).permit(:event_date, :description, :current_user_id)
  end
end
