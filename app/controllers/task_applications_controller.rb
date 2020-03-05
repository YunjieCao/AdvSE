class TaskApplicationsController < ApplicationController
    before_action :require_login

    def index
      if params.key? :order_id
        request_id = params[:order_id]
        @request = Request.find(request_id)
        @applications = TaskApplication.where(order_id: request_id)
      else
        flash[:notice] = "order_id not found"
        redirect_to user_profiles_path
      end
    end

    def create
      # __TODO__(csw1995): Validate Carrier
      @application = TaskApplication.new()
      @application.order_id = params[:request][:id]
      @application.user_id = logged_id
      if @application.save
        flash[:success] = "New application successfully created"
        redirect_to user_profiles_path
      else
        flash[:notice] = "Fail to apply"
        redirect_to user_profiles_path
      end
    end

    def destroy
      # __TODO__(csw1995): Validate Carrier
      @application = TaskApplication.find(params[:id])
      @application.destroy
      flash[:success] = "Task Application '#{@application.id}' deleted."
      redirect_to user_profiles_path
    end

    private
    def application_params
        params.require(:request).permit(
            :id
        )
    end
end
  