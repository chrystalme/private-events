# rubocop:disable Style/GuardClause
module UsersHelper
  @upcoming_events = []
  @past_events = []

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
end
# rubocop:enable Style/GuardClause