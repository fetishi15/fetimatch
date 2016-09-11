class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Overwrite the url
  def after_sign_up_path_for(resource)
  	new_user_prof_path
  end
  def after_sign_out_path_for(resource)
  	user_password
  end
end
