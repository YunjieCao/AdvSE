class UserProfilesController < ApplicationController

  def show
    id = params[:id] # retrieve user_profile ID from URI route
    @user_profile = User_profile.find(id) # look up user_profile by unique ID
    # will render app/views/user_profiles/show.<extension> by default
  end

  def index
    @user_profiles = User_profile.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @user_profile = User_profile.create!(user_profile_params)
    flash[:notice] = "#{@user_profile.name} was successfully created."
    redirect_to user_profiles_path
  end

  def edit
    @user_profile = User_profile.find params[:id]
  end

  def update
    @user_profile = User_profile.find params[:id]
    @user_profile.update_attributes!(user_profile_params)
    flash[:notice] = "#{@user_profile.name} was successfully updated."
    redirect_to user_profile_path(@user_profile)
  end

  def destroy
    @user_profile = User_profile.find(params[:id])
    @user_profile.destroy
    flash[:notice] = "User_profile '#{@user_profile.name}' deleted."
    redirect_to user_profiles_path
  end

  def test
     flash[:notice] = "Test test"
     redirect_to user_profiles_path
  end
  
  private
    def user_profile_params
      params.require(:user_profile).permit(:name, :email, :occupation)
    end

end
