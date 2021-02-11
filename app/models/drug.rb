class Drug < ApplicationRecord
  has_many :invoice_details
  monetize :price_cents
end
