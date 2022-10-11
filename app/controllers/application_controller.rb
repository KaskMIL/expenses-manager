class ApplicationController < ActionController::Base
  before_action :config_permitted_parameters, if: :devise_controller?

  protected

  def config_permitted_parametters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
  end
end
