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
        output << "<p> You have the following #{model.past_events.count}  past events</p>
        <ul>
            #{ model.past_events.each do |event| } 
            <li> #{ event.title } | #{ event.date } | #{ event.location end }   </li> 
        </ul>"
      end
    end
      output.html_safe
  end


#   <% if logged_in?  %>
#     <% if Event.past_events.any? %>
#       <p>You have the following <%= Event.past_events.count %> past events</p>
#       <ul>
#           <% Event.past_events.each do |event| %>
#             <li><%= event.title %> | <%= event.date %> | <%= event.location %> </li>
#           <% end %>  
#       </ul>
#     <% else %>
#       <p> You have no past events. </p> 
#     <% end %>
  
#     <% if Event.upcoming_events.any? %>
#       <p>You have the following <%= Event.upcoming_events.count %> upcoming events</p>
#       <ul>
#           <% Event.upcoming_events.each do |event| %>
#             <li><%= event.title %> | <%= event.date %> | <%= event.location %> </li>
#           <% end %>  
#       </ul>
#     <% else %>
#       <p> You have no upcoming events. </p> 
#     <% end %>
#   <% else %> 
#      <% Event.all.each do |created_event| %>
#           <h3 class='subtitle'> <%= created_event.title %> </h3>
#           <p> <%= created_event.description %> <span> <%= created_event.date %> </span></p>
#     <% end %>
#   <% end %>
# end
# rubocop:enable Style/GuardClause
