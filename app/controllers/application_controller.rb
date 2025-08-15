class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?







  private

  def configure_permitted_parameters
    #新規登録時（sign up）のストロングパラメータを設定
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end

  
end
