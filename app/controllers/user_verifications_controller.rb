class UserVerificationsController < ApplicationController
    before_action :require_login

    def show
        user_id = params[:user_profile_id] # retrieve user_profile ID from URI route
        @user_profile = User_profile.find(user_id) # look up user_profile by unique ID
        
        id = params[:id]
        @verification = UserVerification.find(id)
    end
    
    def new
        user_id = params[:user_profile_id] # retrieve user_profile ID from URI route
        @user_profile = User_profile.find(user_id) # look up user_profile by unique ID
        
        @verification = UserVerification.new
    end
  
    def create
        user_id = logged_id # retrieve user_profile ID from URI route
        @user_profile = User_profile.find(user_id) # look up user_profile by unique ID
        
        @verification = UserVerification.new(verification_params)
        @verification.user_id = user_id
        @verification.status = 0
        
        if @verification.save
            redirect_to user_profiles_path
        else
            render 'new'
        end
    end

    def edit
        user_id = params[:user_profile_id]
        @user_profile = User_profile.find(user_id)

        id = params[:id]
        @verification = UserVerification.find(id)
    end
  
    def update
        user_id = params[:user_profile_id]
        @user_profile = User_profile.find(user_id)

        @verification = UserVerification.find params[:id]
        @verification.update_attributes!(verification_params)
        flash[:success] = "Verification (#{@verification.id}) was successfully updated."
        redirect_to user_profile_user_verification_path(@user_profile.id, @verification.id)
    end
  
    private
    def verification_params
        params.require(:user_verification).permit(:start_date, :end_date)
    end
  
end
  