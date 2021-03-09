# rubocop:disable Style/GuardClause
module UsersHelper
  def show_user_create(current_user)
    if logged_in?
      if current_user.created_events.any?
        "<p> You have: #{current_user.created_events.count}  events </p>
          #{link_to 'Create Event', new_event_path, class: 'button is-light'}".html_safe
      else
        "<h1>No events </h1>
       #{link_to 'Create Event', new_event_path, class: 'button is-light'} ".html_safe
      end
    end
  end

  def logged(model)
    output = ''
    if logged_in?
      if model.past_events.any?
        output << "<h2 class='subtitle'>Past Events </h2><p> There are #{model.past_events.count}  past events</p>"
        model.past_events.each do |event|
          output << "<ul>
                <li> #{ event.title } | #{ event.date } | #{ event.location }   </li> 
            </ul>"
        end
      else
        output << '<p> You have no past events. </p>' 
      end

      if model.upcoming_events.any?
        output << "<h2 class='subtitle'>Upcoming  Events </h2><p>There are #{model.upcoming_events.count} upcoming events</p>"
        model.upcoming_events.each do |event|
          output << "<ul>
                <li> #{ event.title } | #{ event.date } | #{ event.location }   </li> 
            </ul>"
        end
      else
        output << '<p> You have no upcoming events. </p>'
      end
    else
      Event.all.each do |created_event|
        output << "<h3 class='subtitle'> #{created_event.title} </h3>
        <p> #{created_event.description} <span> #{created_event.date} </span></p>"
      end
    end
    output.html_safe
  end
end

