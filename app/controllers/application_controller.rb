class ApplicationController < ActionController::Base


	before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if admin_signed_in?
      admins_top_path
    elsif user_signed_in?
      products_path
    else
      products_path
    end
  end

  def after_sign_out_path_for(resource)
    admin_session_path
  end


  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name_family_name,:name_name,:furigana_family_name,:furigana_name,:postal_code,:address,:phone_number])
    end

end
