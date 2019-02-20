class InstallmentController < ApplicationController
  before_action :set_installment, only: [:show, :create, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /todos
  def index
    @installment = Installment.all
    json_response(@installment)
  end

  # GET /installment/:id
  def show
    json_response(@installment)
  end

  # POST /installment
  def create
    @installment = Installment.create!(installment_params)
    json_response(@installment, :created)
  end

  # DELETE /installment/:id
  def destroy
    @installment.destroy
    head :no_content
  end

  private

  def installment_params
    # whitelist params
    params.permit(:present_value, :number_of_installments, :monthly_interest_rate)
  end

  def set_installment
    @installment = Installment.find(params[:id])
  end
end
