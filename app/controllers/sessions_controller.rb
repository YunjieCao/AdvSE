class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to user_profiles_path
    end
  end

  def create
    user_profile = User_profile.find_by(email: params[:session][:email].downcase)
    if user_profile && user_profile.authenticate(params[:session][:password])
      log_in user_profile
      redirect_to user_profile_path(user_profile)
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    if logged_in?
      log_out!
      flash[:success] = 'You have successfully logged out!'
    else
      flash[:notice] = 'You have not logged in yet!'
    end

    redirect_to login_path
  end
end
