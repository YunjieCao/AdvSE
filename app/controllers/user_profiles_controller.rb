class UserProfilesController < ApplicationController

  def show
    # This will show User Center page.
    id = params[:id] # retrieve user_profile ID from URI route
    @user_profile = User_profile.find(id) # look up user_profile by unique ID
    @requester_requests = Request.where(requester_id: @user_profile.id)
    @carrier_requests = Request.where(carrier_id: @user_profile.id)
    @applications = Task_application.where(user_id: @user_profile.id)
    # will render app/views/user_profiles/show.<extension> by default
  end

  def index
    if session[:user_id]
      @user_profile = User_profile.find(session[:user_id])
      redirect_to user_profile_path(@user_profile)
    else
      @user_profile = User_profile.all # TODO: Delete this line
      # TODO: Redirect to login page
    end
  end

  def new
    @user_profile = User_profile.new
    # default: render 'new' template
    # TODO: Create a register page
  end

  def create
    @user_profile = User_profile.new(user_params)
    if @user_profile.save
      flash[:success] = "Welcome to the Sterna!"
      redirect_to user_profiles_path # should redirect to user center
    else
      render 'new'
    end
    #@user_profile = User_profile.create!(user_profile_params)
    #flash[:notice] = "#{@user_profile.name} was successfully created."
    #redirect_to user_profiles_path
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
    def user_params
      params.require(:user_profile).permit(:name, :email, :occupation, :password, :password_confirmation)
    end

end
