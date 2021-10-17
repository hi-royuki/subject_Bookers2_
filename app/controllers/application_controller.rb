class ApplicationController < ActionController::Base
  
# ログイン後のぱす 
 def after_sign_in_path_for(resource)
    user_path(resource)
 end

# ログアウト後のパス
  def after_sign_out_path_for(resource)
    root_path(resource)
  end
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    
   

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
  
end
