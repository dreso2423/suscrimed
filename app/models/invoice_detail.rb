class InvoiceDetail < ApplicationRecord
  belongs_to :invoice_id
  belongs_to :drug_id
end
