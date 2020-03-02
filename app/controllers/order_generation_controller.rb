class OrderGenerationController < ApplicationController
  def index
    params[:order_id] = 12
    @pending_order_id = params[:order_id]
    @applications = Task_application.get_application(params[:order_id])
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
    order_id = params[:id]
    carrier_id = params[:carrier_id]
    Task_application.confirm_order(order_id, carrier_id)
    flash[:notice] = "Order #{order_id} was successfully generated."
    redirect_to user_profiles_path
    # TODO: redirect to previous page
  end

  private
  def request_params
    params.require(:request).permit(:id, :carrier_id, :status)
  end
end
