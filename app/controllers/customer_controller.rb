class CustomerController < ApplicationController
  def index
    @customers = Customer.where(present_black_list: false).order('phone_number DESC')
    @customers_black_list = Customer.where(present_black_list: true).order('updated_at')
  end
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new
    @customer.save
    redirect_to customer_path
  end

  def edit
    @customer = Customer.find params[:id]

  end

  def update
    @customer = Customer.find params[:id]
    @customer.update_attributes customer_params
    redirect_to customer_path
  end

  def complete
    @customer = Customer.find params[:id]
    redirect_to customer_path
    @customer.present_black_list!
  end

  def destroy
    @customer = Customer.find params[:id]
    @customer.destroy
    redirect_to customer_path
  end

  private

  def customer_params
    params.require(:customer).permit([:name, :phone_number, :description, :present_black_list ])
  end
end
