class InvoicesController < ApplicationController
  def index
    @invoice = Invoice.all
  end

  def edit
  end

  def update
  end

  def delete

  end

  def new
    ## k = key v = value SER MAS EXPLICITO
    @invoice = Invoice.new
    session[:cart].each do |k, v|
      drug = Drug.find(k)
      @invoice.invoice_details << InvoiceDetail.new(invoice: @invoice, drug: drug, quantity: v, subtotal: drug.price_cents * v, total: drug.price_cents * v )
      ## @invoice.invoice_details.build(invoice: @invoice, drug: drug, quantity: v, subtotal: drug.price_cents * v, total: drug.price_cents * v)
    end
    @invoice_details = @invoice.invoice_details
    authorize @invoice

  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.user = current_user
    authorize @invoice

    if @invoice.save
      # vooy a agregar todas las drogas que existen en la session
      # invoiceline new
      session[:cart] = nil
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
    params.require(:invoice).permit(:frequency, invoice_details_attributes: [:total, :quantity, :subtotal, :drug_id])
  end


end
