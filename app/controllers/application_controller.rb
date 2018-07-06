class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  protected

  # def after_sign_in_path_for(resource)
  #   if resource.sign_in_count == 1 && resource.image.blank?
  #     user_profile_photo_path
  #   else
  #     #super
  #     session[:previous_url] || current_user
  #   end
  # end


  def after_sign_up_path_for(resource)

  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:username, :email, :fname, :lname, :password, :password_confirmation)
    end
    # devise_parameter_sanitizer.permit(:account_update) do |user_params|
    #   user_params.permit(:username, :email, :name, :avatar, :about, :password, :password_confirmation, :current_password, :crop_x, :crop_y, :crop_w, :crop_h)
    # end
  end
end
