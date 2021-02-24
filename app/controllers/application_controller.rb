class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, except: %i[password password_confirmation current_password])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name photo])
  end

  def after_sign_in_path_for(_resource)
    jobs_path || root_path
  end
end
