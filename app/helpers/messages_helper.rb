module MessagesHelper
  def recipients_options(chosen_recipient = nil)
    s = ''
    #TODO(jason)- figure out how not to have the user added
    User.all.each do |user|
    	if current_user.id != user.id
      		s << "<option value='#{user.id}' #{'selected' if user == chosen_recipient}>#{user.first_name}</option>"
      	end
    end
    s.html_safe
  end
end