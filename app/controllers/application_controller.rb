class ApplicationController < ActionController::Base
  #allow users to submit if they are an admin on registration form
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])
  end
end
