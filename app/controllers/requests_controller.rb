class RequestsController < ApplicationController
    before_action :require_login, except: [:show, :index]

    def show
      # This will show request details page.
      id = params[:id]
      @request = Request.find(id)
    end
  
    def index
        @request = Request.all
    end
  
    def new
      @request = Request.new
      address_data = Address.where(user_id: logged_id)
      @address = address_data.map { |addr| addr.select_option }
    end
  
    def create
      @request = Request.new(request_params)
      @request.requester_id = logged_id
      @request.status = 0
      @request.created_at = DateTime.now
      if @request.save
        flash[:success] = "New request successfully posted"
        redirect_to requests_path # should redirect to marketplace
      else
        render 'new'
      end
    end
  
    def edit
      @request = Request.find params[:id]
      address_data = Address.where(user_id: logged_id)
      @address = address_data.map { |addr| addr.select_option }
    end
  
    def update
      @request = Request.find params[:id]
      @request.update_attributes!(request_params)
      flash[:success] = "#{@request.title} was successfully updated."
      redirect_to request_path(@request)
    end
  
    private
    def request_params
        params.require(:request).permit(
            :title, :description, :img_url,
            :value,
            :source_addr_id, :dest_addr_id,
            :expected_delivery_start, :expected_delivery_end,
        )
    end
end
  