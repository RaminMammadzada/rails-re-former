module UsersHelper
  def display_errors(user)
    if user.errors.any?
      pluralize(user.errors.count, 'error')
      messages = []
      user.errors.full_messages.each do |msg|
        messages.push(msg)
      end

      error_counts_message = content_tag(:h2, user.errors.count.to_s + ' errors prohibited this post from being saved:',
                                         class: 'total_errors')
      error_message = content_tag(:ul, class: 'all_errors') do
        messages.each { |msg| concat content_tag(:li, msg) }
      end

      all_error_contents = content_tag(:div, error_counts_message + error_message, class: 'all_error_contents')

      return all_error_contents
    end

    nil
  end
end
