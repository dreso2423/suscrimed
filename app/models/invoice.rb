class Invoice < ApplicationRecord
  belongs_to :user_id
  has_many :invoice_details

  FREQUENCY = [

    "Only one",
    "Twice per month",
    "Monthly",
    "Every 3 months"
    ]

    validates :frequency,
              inclusion: { in: FREQUENCY }
end
