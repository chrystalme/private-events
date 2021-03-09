module ApplicationHelper

  def errors(item)
    output = ''
    if item.errors.any?
      item.errors.full_messages.each do |message|
        output << "<div class='notification is-danger'> #{message} </div>"
      end
    end
    output.html_safe
  end

end
#   <% if @created_event.errors.any? %>
#     <div class="notification is-danger">
#       <% @created_event.errors.full_messages.each do |message| %>
#        <%= message %>
#       <% end %>
#     </div>
#   <% end %>


#   <% if @user.errors.any? %>
#     <div class="notification is-danger">
#       <% @user.errors.full_messages.each do |message| %>
#         <div><%= message %></div>
#       <% end %>
#     </div>
#   <% end %>
# end



#   def create_post_btn
#     out = ''
#     if user_signed_in?
#       out << link_to('Create Post', new_post_path, class: 'float-right mr-2 btn btn-outline-secondary')
#     end
#     out.html_safe
#   end




#   <% if user_signed_in? %>
#     <span class="float-right btn btn-outline-secondary">
#    <%= link_to  "Create Post", new_post_path %></span>
#  <% else %>
#    <span class="float-right btn btn-outline-secondary">
#    <%= link_to  "Sign in", user_session_path %></span>
#   <% end %>

#   ...
#   def created_events(user, name, events, title)
#     render partial: name, locals: { obj: events, title: title } if     user.events.size.positive?
#   end
#   ...
#   Here is what the partial looks like
#   <% obj.each do |event| %>
#   <div class="col-sm-3 mb-2">
#   <div class="card">
#   ...

#   ...
#   <%= created_events(@user, 'users/events', @user.events, 'List of created events')  %>
  