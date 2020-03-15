class UserProfilesController < ApplicationController
  # before_action :require_login, except: [:new, :create]
  before_action :require_login, only: [:index, :show, :edit, :update]
  before_action :correct_user, only: [:show, :edit, :update]

  def show
    # This will show User Center page.
    id = params[:id] # retrieve user_profile ID from URI route
    @user_profile = User_profile.find(id) # look up user_profile by unique ID
    @requester_requests = Request.get_requester_request(id)
    @carrier_requests = Request.get_carrier_request(id)
    @applications = TaskApplication.where(user_id: @user_profile.id)
    # will render app/views/user_profiles/show.<extension> by default
  end

  def index
    redirect_to user_profile_path(logged_id)
  end

  def new
    @user_profile = User_profile.new
  end

  def create
    @user_profile = User_profile.new(user_params)
    if @user_profile.save
      flash[:success] = "Welcome to Sterna!"
      log_in @user_profile
      redirect_to user_profile_path(@user_profile)
    else
      render 'new'
    end
  end

  def edit
    @user_profile = User_profile.find params[:id]
  end

  def update
    @user_profile = User_profile.find params[:id]
    if @user_profile.update_attributes(user_params)
      flash[:notice] = "#{@user_profile.name} was successfully updated."
      redirect_to user_profile_path(@user_profile)
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user_profile).permit(:name, :email, :occupation, :password, :password_confirmation)
    end

    # Confirms the correct user.
    def correct_user
      @user_profile = User_profile.find(params[:id])
      redirect_to(login_path) unless @user_profile == current_user
    end

end
