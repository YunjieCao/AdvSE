class ReviewsController < ApplicationController
  before_action :require_login

  def index
    @request_id = params[:request_id]
    @review = Review.where(:order_id => @request_id)
    @request = Request.find_by(:id => @request_id)
    @requester_id = @request.requester_id
  end

  def create
    score = params[:score]
    comment = params[:comment]
    request_id = params[:request_id]
    flash[:success] = Review.insert_review(request_id, score, comment)
    Request.update_status(request_id, $order_finished)
    redirect_to user_profiles_path(params[:user_id])
  end

  def show
    carrier_id = params[:carrier_id]
    @reviews = Review.get_reviews_for_this_carrier(carrier_id)
  end

  private
  def request_params
    params.require(:review).permit(
        :order_id, :ratings, :comments
        )
  end
end

