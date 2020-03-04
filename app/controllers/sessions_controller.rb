class SessionsController < ApplicationController
  def new
  end

  def create
    user_profile = User_profile.find_by(email: params[:session][:email].downcase)
    if user_profile && user_profile.authenticate(params[:session][:password])
      log_in user_profile
      redirect_to user_profiles_path # need to change to user center
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
