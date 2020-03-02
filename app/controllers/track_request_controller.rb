class TrackRequestController < ApplicationController
  def index
    params[:order_id] = 12
    status = Request.get_status(params[:order_id])
    flash[:notice] = Request.map_status(status)
    redirect_to user_profiles_path
    # TODO: redirect to previous page
  end


  def edit

  end

  def new

  end

  def show

  end


  def update

  end

end
