class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.integer :price
      t.integer :cost
      t.string :drug_name
      t.string :image
      t.string :image_alt_text
      t.string :brand
      t.string :supplier
      t.string :grammage
      t.string :description
      t.string :type
      t.string :tags
      t.integer :inventory
      t.string :status
      t.string :ean
      t.string :active_ingredient
      t.string :cofepris_group
      t.string :patent_name
      t.boolean :product_available
      t.string :body
      t.string :title
      t.string :laboratory

      t.timestamps
    end
  end
end
