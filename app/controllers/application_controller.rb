class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


private
	def after_sign_in_path_for(resource)
			adminfisher_path
	end

	def after_sign_out_path_for(resource)
  		admin_session_path
	end
end
