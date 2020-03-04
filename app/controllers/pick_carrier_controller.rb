class PickCarrierController < ApplicationController
    def index
        if session[:request_id]
          @request = Request.find(session[:request_id])
          redirect_to pick_carrier_path(@request)
        else
          # TODO: Redirect to login page
        end
    end

    def show
        request_id = params[:id]
        @request = Request.find(request_id)
        @applications = Task_application.where(order_id: request_id)
    end
end
  