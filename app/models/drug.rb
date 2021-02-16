class Drug < ApplicationRecord
  has_many :invoice_details
  monetize :price_cents
  include PgSearch::Model
    pg_search_scope :search_by_drugs,
      against: [ :drug_name, :description,:ean,:title],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
end
