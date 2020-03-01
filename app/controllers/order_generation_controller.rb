class OrderGenerationController < ApplicationController
  def index
    params[:order_id] = 12
    order_id = params[:order_id]
    @orders = Task_application.joins(Request).where(Request.id=Task_application.order_id)
    puts @orders
    puts "aaaaaaaaaaaaaaaaaaaaaaaaa"
  end

  def edit

  end

  def new

  end

  def show

  end
end
