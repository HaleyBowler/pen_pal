class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters
  protected

  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, 
        :email, :password, :password_confirmation, :location, 
        :avatar)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :current_password,
        :email, :location, :avatar)
    end
  end
end