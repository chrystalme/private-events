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
    output << if logged_in?
                "<h2 class='button is-static is-light'>Welcome  #{current_user.name} </h2>
     #{link_to 'Log Out', logout_path, method: 'delete', class: 'button is-primary'}"
              else
                "#{link_to 'Sign Up', sign_up_path, class: 'button is-primary'}
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
