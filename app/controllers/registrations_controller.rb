class RegistrationsController < Devise::RegistrationsController


  
  def after_sign_in_path_for(users)
    home_index_path
  end

    def after_sign_up_path_for(users)
      edit_user_path(current_user)
    end


  before_filter :configure_permitted_parameters


  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, 
        :email, :password, :password_confirmation, :location, 
        :avatar, :about_me)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :current_password,
        :email, :password, :password_confirmation, :location, :avatar, :about_me)
    end
  end
end