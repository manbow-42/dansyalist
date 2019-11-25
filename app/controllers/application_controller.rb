class ApplicationController < ActionController::Base
  before_action :configure_permitted_paremeters, if: :devise_controller?
  
  def configure_permitted_paremeters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end
end
