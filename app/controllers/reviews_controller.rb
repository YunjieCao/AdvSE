class ReviewsController < ApplicationController
  before_action :require_login

  def show

  end

  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private
  def request_params
    params.require(:review).permit(
        :order_id, :ratings, :comments
        )
  end
end

