module SessionsHelper
  def log_in(user_profile)
    session[:user_profile_id] = user.id
  end
end
