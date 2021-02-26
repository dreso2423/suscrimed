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
    if session[:cart]
      session[:cart].each do |k, v|
        drug = Drug.find(k)
        @invoice.invoice_details << InvoiceDetail.new(invoice: @invoice, drug: drug, quantity: v, subtotal: drug.price_cents * v, total: drug.price_cents * v )
        ## @invoice.invoice_details.build(invoice: @invoice, drug: drug, quantity: v, subtotal: drug.price_cents * v, total: drug.price_cents * v)
      end
      @invoice_details = @invoice.invoice_details
      authorize @invoice

      @total = @invoice.invoice_details.sum{ |item| item.subtotal}
    else
      skip_authorization
    end
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.user = current_user
    @invoice.state = "pending"
    authorize @invoice

    if @invoice.save
      # vooy a agregar todas las drogas que existen en la session
      # invoiceline new
      line_items = []
      @invoice.invoice_details.each do |item|
        line_items << {
                  name: item.drug.drug_name,
                  images: [item.drug.image],
                  amount: item.drug.price_cents,
                  currency: 'mxn',
                  quantity: item.quantity
                }
      end
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: line_items,
        success_url: invoice_url(@invoice),
        cancel_url: invoice_url(@invoice)
      )
      session[:cart] = nil
      redirect_to @invoice
    else
      render :new
    end

    Drug = Drug.find(params[:drug_id])
      order  = Order.create!(teddy: teddy, teddy_sku: teddy.sku, amount: teddy.price, state: 'pending', user: current_user)



      order.update(checkout_session_id: session.id)
      redirect_to new_order_payment_path(order)

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
