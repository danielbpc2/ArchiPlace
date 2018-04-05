class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_back(fallback_location: root_path, alert: "(Error 403): Your account is not able to do this action.")
    else
      redirect_to new_user_registration_path
    end
  end

  protected

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :birthday, :role, :image, :image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :birthday, :role, :image, :image_cache])
  end
end
