class PaymentsController < ApplicationController

  def new
    @invoice = current_user.invoices.where(state: 'pending').find(params[:order_id])
  end
end
