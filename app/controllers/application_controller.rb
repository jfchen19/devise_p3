class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramseters, if: :devise_controller?

  private
  def configure_permitted_paramseters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
    devise_parameter_sanitizer.permit(:account_update, keys:[:name])
  end
end
