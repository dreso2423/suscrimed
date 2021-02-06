class InvoicesController < ApplicationController
  def index
    @invoice = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new()
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

private

  def invoice_params
    params.require(:invoice).permit(:drug_name, :quantity)
  end


end
