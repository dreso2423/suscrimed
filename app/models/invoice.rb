class Invoice < ApplicationRecord
  belongs_to :user_id
  has_many :invoice_details
end
