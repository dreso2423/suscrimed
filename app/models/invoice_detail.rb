class InvoiceDetail < ApplicationRecord
  belongs_to :invoice
  belongs_to :drug
end
