class InvoicesController < ApplicationController
  def index

    @invoices = current_user.invoices
    @invoices = policy_scope(@invoices)
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
      session_stripe = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        shipping_address_collection: {
            allowed_countries: ['MX'],
          },
        line_items: line_items,
        success_url: invoice_url(@invoice),
        cancel_url: invoice_url(@invoice)
      )
      session.delete(:cart)
      @invoice.update(checkout_session_id: session_stripe.id)
      redirect_to checkout_path(@invoice)
    else
      render :new
    end

  end

  def checkout
    @invoice = Invoice.find(params[:id])
    authorize @invoice
  end

  def show
    @invoice = Invoice.find(params[:id])
    authorize @invoice
    @stripe_order = Stripe::Checkout::Session.retrieve(@invoice.checkout_session_id)
    @address = @stripe_order.shipping
  end

  private

  def invoice_params
    params.require(:invoice).permit(:frequency, invoice_details_attributes: [:total, :quantity, :subtotal, :drug_id])
  end


end
