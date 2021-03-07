module EventsHelper
  def show_status(current_user)
    if logged_in?
      if @created_event.creator == current_user
        "<span>Hosting  <i class='fa fa-check'></i></span>".html_safe
      elsif @created_event.attendees.include?(current_user)
        "<span>Attending  <i class='fa fa-check'></i></span>".html_safe
      else
        "#{button_to 'Attend', attend_event_path, method: :get}".html_safe
      end
    end
  end
end
