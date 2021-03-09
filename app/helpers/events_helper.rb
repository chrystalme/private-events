module EventsHelper
  def show_status(current_user)
    if logged_in? && @created_event.creator == current_user
      "<span>Hosting  <i class='fa fa-check'></i></span>".html_safe
    elsif logged_in? && @created_event.attendees.include?(current_user)
      "<span>Attending  <i class='fa fa-check'></i></span>".html_safe
    else
      (button_to 'Attend', attend_event_path, method: :get).to_s.html_safe
    end
  end

  def all_events
    output = ''
    @created_events.each do |created_event|
      output << "<h3 class='subtitle'> #{created_event.title} </h3>
      <p>  #{created_event.description} <span> #{created_event.date}</span></p>"
    end
    output.html_safe
  end

  def return_upcoming_events(item)
    output = ''
    if item.upcoming_events.present?
      item.upcoming_events.each do |event|
        output << "<li> <strong> #{link_to event.title, event_path(event)} </strong></li>"
      end
    else
      output << '<p> No upcoming Events </p>'
    end
    output.html_safe
  end

  def return_past_events(item)
    output = ''
    if item.past_events.present?
      item.past_events.each do |event|
        output << "<li> <strong> #{event.title} </strong> </li>"
      end
    else
      output << '<p> No past Events </p>'
    end
    output.html_safe
  end
end
