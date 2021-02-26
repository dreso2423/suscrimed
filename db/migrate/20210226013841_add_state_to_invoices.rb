class AddStateToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :state, :string
  end
end
