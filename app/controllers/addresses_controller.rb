class AddressesController < ApplicationController
    before_action :require_login

    def show
        id = params[:id]
        @address = Address.find(id)
    end
  
    def index
        @addresses = Address.where(user_id: logged_id)
    end
  
    def new
        # default: render 'new' template
    end
  
    def create
        if !address_params[:line1].present? 
            flash[:danger] = "Please fill in line1!"
            render 'new'
        elsif !address_params[:city].present?
            flash[:danger] = "Please fill in city!"
            render 'new'
        elsif !address_params[:state].present?
            flash[:danger] = "Please fill in state!"
            render 'new'
        elsif !address_params[:country].present?
            flash[:danger] = "Please fill in country!"
            render 'new'
        elsif !address_params[:postal_code].present?
            flash[:danger] = "Please fill in postal_code!"
            render 'new'
        elsif !address_params[:phone_number].present?
            flash[:danger] = "Please fill in phone_number!"
            render 'new'
        else
            @address = Address.create!(address_params.merge(:user_id => logged_id))
            flash[:success] = "Address #{@address.id} was successfully created."
            redirect_to addresses_path
        end
    end
  
    def edit
        @address = Address.find params[:id]
    end
  
    def update
        if !address_params[:line1].present? 
            flash[:danger] = "Please fill in line1!"
            render 'new'
        elsif !address_params[:city].present?
            flash[:danger] = "Please fill in city!"
            render 'new'
        elsif !address_params[:state].present?
            flash[:danger] = "Please fill in state!"
            render 'new'
        elsif !address_params[:country].present?
            flash[:danger] = "Please fill in country!"
            render 'new'
        elsif !address_params[:postal_code].present?
            flash[:danger] = "Please fill in postal_code!"
            render 'new'
        elsif !address_params[:phone_number].present?
            flash[:danger] = "Please fill in phone_number!"
            render 'new'
        else
            @address = Address.find params[:id]
            @address.update_attributes!(address_params)
            flash[:success] = "Address #{@address.id} was successfully updated."
            redirect_to address_path(@address)
        end
    end
  
    def destroy
        @address = Address.find(params[:id])
        @address.destroy
        flash[:success] = "Address '#{@address.id}' deleted."
        redirect_to addresses_path
    end
    
    private
        def address_params
            params.require(:address).permit(
                :line1, :line2, :city, :state,
                :country, :postal_code, :phone_number, :user_id,
            )
        end
  
  end
  