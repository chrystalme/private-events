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

  def header_display
    output = ''
    if logged_in?
      output << "<h2 class='button is-static is-light'>Welcome  #{current_user.name} </h2>
     #{link_to 'Log Out', logout_path, method: 'delete', class: 'button is-primary'}"
   else 
     output << "#{link_to 'Sign Up', sign_up_path, class: 'button is-primary'}
     #{link_to 'Sign In', sign_in_path, class: 'button is-light'}"
   end
   output.html_safe 
  end

  def flash_notice
    output = ''
    if flash[:notice] 
      output << "<div class='notification is-primary'>
        #{flash[:notice]} 
      </div>"
    end   
    
    if flash[:alert] 
     output << "<div class='notification is-danger'>
         #{flash[:alert]}  
      </div>"
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
  