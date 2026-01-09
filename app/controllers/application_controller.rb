class ApplicationController < ActionController::Base

    before_action :configure_permitted_paramerters, if: :devise_controller?
    # deviseに関する処理（コントローラー）の時だけ、このメソッドを実行する
    
    protected

    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
       devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    end

    private
    def after_sign_in_path_for(resource)
        user_path(resource)
    end
    def after_sign_out_path_for(resource)
        root_path(resource)
    end
end
