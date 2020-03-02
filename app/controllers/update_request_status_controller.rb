class UpdateRequestStatusController < ApplicationController
  def index
    params[:order_id] = 12
    @current_status = Request.get_status(params[:order_id]).to_i + 1
    @order_id = params[:order_id]
    if @current_status == 5 #TODO: 5 == total num of status
      flash[:notice] = "Already finished. Can not update any more!"
      redirect_to user_profiles_path
    end
  end

  def edit

  end

  def new

  end

  def show

  end


  def update
    puts params
    order_id = params[:id]
    carrier_id = params[:next_status]
    Request.update_status(params[:id], params[:next_status])
    flash[:notice] = "Order #{order_id} status was successfully updated."
    redirect_to user_profiles_path
    #TODO: redirect to previous page
  end
end
