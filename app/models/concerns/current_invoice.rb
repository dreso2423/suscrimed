module CurrentInvoice

  private

  def set_invoice
    @invoice = Invoice.find(session[:invoice_id])
  rescue ApplicationRecord::RecordNotFound
    invoice = Invoice.create[:user_id]
    session[:invoice_id] = @invoice.id
  end


end
