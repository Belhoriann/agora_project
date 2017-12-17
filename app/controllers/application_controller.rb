class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :avatar, :email, :password, :password_confirmation, :headline, :work_place, :linkedin])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :email, :password, :current_password, :headline, :work_place, :linkedin, :date_of_birth, :avatar])
  end
end
