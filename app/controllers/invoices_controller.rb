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

  def edit
  end

  def update
  end

  def delete
  end

  def new
    @invoice = Invoice.new
    authorize @invoice
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.user = current_user
     authorize @invoice

    if @invoice.save?
      redirect_to @invoice
    else
      render :new
    end
  end

  def show
    @invoice = Invoice.find(params[:id])
    authorize @invoice
  end

  private

  def invoice_params
    params.require(:invoice).permit(:drug_name, :quantity)
  end


end
