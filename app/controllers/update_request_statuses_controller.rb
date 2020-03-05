class UpdateRequestStatusesController < ApplicationController
  def index
    @current_status = Request.get_status(params[:order_id]).to_i + 1
    @order_id = params[:order_id]
    @status_num = Request.status_num
    if @current_status == Request.status_num # can not change if get to the end
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
    flash[:success] = "Order #{order_id} status was successfully updated."
    redirect_to user_profiles_path
  end
end
