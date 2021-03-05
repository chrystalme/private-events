class EventsController < ApplicationController
<<<<<<< HEAD

  # before_action :logged_in?, except: [:index]
=======
  before_action :logged_in?, except: [:index]
  def new
    @created_event = current_user.created_events.build
  end

>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
  def index
    @created_events = Event.all
  end

<<<<<<< HEAD
  def new
    @created_event = current_user.created_events.build
=======
  def show
    @created_event = Event.find(params[:id])
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
  end

  def create
    @created_event = current_user.created_events.build(event_params)
<<<<<<< HEAD
  
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
=======
    @created_event.attendees << current_user
    
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
    flash[:notices] = "You are attending :#{@created_event.title}"
    respond_to current_user
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
  end

  private

  def event_params
<<<<<<< HEAD
    params.require(:event).permit(:description, :event_date, :creator_id)
=======
    params.require(:event).permit(:title, :description, :date, :location, :creator_id)
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
  end
end
