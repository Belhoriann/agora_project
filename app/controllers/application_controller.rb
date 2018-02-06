class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  # The callback which stores the current location must be added before you authenticate the user 
  # as `authenticate_user!` (or whatever your resource is) will halt the filter chain and redirect 
  # before the location can be stored.
  # before_action :authenticate_user!
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :avatar, :email, :password, :password_confirmation, :headline, :work_place, :linkedin, :researchgate, :facebook, :twitter, :skype, :youtube, :instagram])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :avatar, :email, :password, :password_confirmation, :headline, :work_place, :linkedin, :researchgate, :facebook, :twitter, :skype, :youtube, :instagram, :date_of_birth])
  end
  
  private
    # Its important that the location is NOT stored if:
    # - The request method is not GET (non idempotent)
    # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an 
    #    infinite redirect loop.
    # - The request is an Ajax request as this can lead to very unexpected behaviour.
    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr? 
    end

    def store_user_location!
      # :user is the scope we are authenticating
      store_location_for(:user, request.fullpath)
    end
    
    def after_sign_out_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || super
    end
end
