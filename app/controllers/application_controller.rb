class ApplicationController < ActionController::Base

    protected

    def update_allowed_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
        devise_parameter_sanitizer.permit(:account_update) do |u|
          u.permit(:email, :password, :current_password, :name)
        end
    end
end
