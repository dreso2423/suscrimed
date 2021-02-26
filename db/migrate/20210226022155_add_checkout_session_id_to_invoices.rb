class AddCheckoutSessionIdToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :checkout_session_id, :string
  end
end
