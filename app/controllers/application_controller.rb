class ApplicationController < ActionController::Base
    # deviseコントローラーにストロングパラメータを追加する    
    before_action :configure_permitted_parameters, if: :devise_controller?

    # ログイン済ユーザーのみにアクセスを許可する
    #before_action :authenticate_user!
    
    protected

    def configure_permitted_parameters
        added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

    # ログイン後、blogs/indexに移動する
    def after_sign_in_path_for(resource)
        quiets_path
    end



end
