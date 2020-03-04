module SessionsHelper
  def log_in(user_profile)
    session[:user_profile_id] = user_profile.id
  end

  def log_out!
    session[:user_profile_id] = nil
  end

  def logged_in?
    session.key? :user_profile_id
  end

  def logged_id
    session[:user_profile_id]
  end

  def require_login
    unless logged_in?
      flash[:notice] = "You must be logged in to access this section"
      redirect_to login_path # halts request cycle
    end
  end
  
end
