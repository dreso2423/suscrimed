class CreateInvoiceDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_details do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :drug, null: false, foreign_key: true
      t.float :total
      t.integer :quantity
      t.float :subtotal

      t.timestamps
    end
  end
end
