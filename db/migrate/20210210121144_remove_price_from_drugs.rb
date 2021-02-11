class RemovePriceFromDrugs < ActiveRecord::Migration[6.0]
  def change
    remove_column :drugs, :price, :integer
  end
end
