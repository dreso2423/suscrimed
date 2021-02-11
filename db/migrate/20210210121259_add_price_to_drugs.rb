class AddPriceToDrugs < ActiveRecord::Migration[6.0]
  def change
    add_monetize :drugs, :price, currency: { present: false }
  end
end
