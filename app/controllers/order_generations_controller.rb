class OrderGenerationsController < ApplicationController
  before_action :require_login
  def index
    @pending_order_id = params[:order_id]
    @applications = TaskApplication.get_application(params[:order_id])
  end

  def edit

  end

  def new

  end

  def show

  end


  def update
    # requester choose a carrier, update relevant information
    puts params
    application = TaskApplication.find(params[:id]) # :id -> application id
    application.pick_carrier
    
    flash[:success] = "Order #{application.order_id} was successfully generated."
    redirect_to user_profiles_path
  end

  private
  def request_params
    params.require(:request).permit(:id, :carrier_id, :status)
  end
end
