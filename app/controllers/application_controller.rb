class ApplicationController < ActionController::Base
  include Pundit #santo
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_location

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,        keys: [:firstname, :lastname])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname])
    end

    #santo
    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to new_user_session_url, :notice => 'you must be signed in'
      end
    end

    def store_location
      # store last url as long as it isn't a /users path
      session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
    end

    def after_sign_in_path_for(resource)
      session[:previous_url] || root_path
    end

    def after_sign_out_path_for(resource_or_scope)
      request.referrer
    end

end
