class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :birthday, :role, :image, :image_cache])
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_back(fallback_location: root_path, alert: "(Error 403): Your account is not able to do this action.")
  end
end
