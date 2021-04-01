# rubocop:disable Style/GuardClause:

module EventsHelper
  def show_status(current_user)
    if logged_in?
      if @created_event.creator == current_user
        "<div class='button is-danger ml-2 mb-3'> <span>Hosting  <i class='fa fa-check'></i></span></div>".html_safe
      elsif @created_event.attendees.include?(current_user)
        "<div class='button is-danger ml-2 mb-3'> <span>Attending  <i class='fa fa-check'></i></span></div>".html_safe
      else
        (button_to 'Attend', attend_event_path, method: :get, class: 'button is-info').to_s.html_safe
      end
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
# rubocop:enable Style/GuardClause:
