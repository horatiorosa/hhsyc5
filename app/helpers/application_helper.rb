module ApplicationHelper

private	
	def current_admin
      session[:admin_id] ? Admin.find(session[:admin_id]) : nil
  end


  def authenticate_user!
      redirect_to new_admin_session_path unless current_admin
  end
end
