class ApplicationController < ActionController::Base

    before_action :configure_permitted_paramerters, if: :devise_controller?

    
    protected

    def configure_permitted_paramerters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

    private
    def after_sign_in_path_for(resource)
        user_path(resource)
    end
    def after_sign_out_path_for(resource)
        root_path(resource)
    end
end
