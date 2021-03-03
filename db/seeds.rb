# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Drug.destroy_all

# puts "Creating seeds"

#   drug = Drug.new(drug_name: "BFRM-Depakene 250 mg Caja Con 30 Cápsulas",
#               price_cents: 488,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp800Wx800H_30005_1d6g6qe3j",
#               grammage: "10",
#               drug_type: "Anticonvulsivante"
#               )
#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "Depakene 250 mg Caja Con 60 Cápsulas",
#               price_cents: 863,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_30006_1d6g6qe3j",
#               grammage: "10",
#               drug_type: "Anticonvulsivante"
#               )
#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "Epival 250 Mg Frasco Con 30 Comprimidos",
#               price_cents: 478,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_30159_1d6g6qe3j",
#               grammage: "10",
#               drug_type: "Anticonvulsivante"
#               )

#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "Epival 500 mg 1 Frasco Con 30 Comprimidos",
#               price_cents: 957,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_30009_1d6g6qe3j",
#               grammage: "10",
#               drug_type: "Anticonvulsivante"
#               )

#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "FRM-Optimin Jarabe Frasco Con 240 mL",
#               price_cents: 412,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_30334_1d6g6qe3j",
#               grammage: "10",
#               drug_type: "Hiper tension"
#               )
#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."
#   drug = Drug.new(drug_name: "Pedialyte Sabor Manzana Frasco Con 500 mL",
#               price_cents: 20,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_41200004_1dic9a98h",
#               grammage: "10",
#               drug_type: "Hiper tension"
#               )
#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."
#   drug = Drug.new(drug_name: "Pedialyte Sabor Durazno Frasco Con 500 mL",
#               price_cents: 20,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_41200003_1dic9a98h",
#               grammage: "10",
#               drug_type: "Hiper tension"
#               )

#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "Pedialyte Sabor Coco Frasco Con 500 mL",
#               price_cents: 20,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_41200002_1dic9a98h",
#               grammage: "10",
#               drug_type: "Hiper tension"
#               )

#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "FRM-Pedialyte Sabor Cereza Frasco Con 500 mL",
#               price_cents: 20,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_41200001_1dic9a98h",
#               grammage: "20",
#               drug_type: "Cancer"
#               )

#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

#   drug = Drug.new(drug_name: "FRM-Klaricid HP 500 mg Caja con 10 Tabletas - RX2",
#               price_cents: 749,
#               description: "🛵⚡ Entrega GRATIS!",
#               image: "https://assets2.farmaciasanpablo.com.mx/uploads-prod/productimages/Fsp275Wx275H_30068_1d6g6qe3j",
#               grammage: "10",
#               drug_type: "Antibiótico (macrólido) para infecciones ocasionadas por gérmenes sensibles."
#               )

#   drug.save
#   puts "#{drug.id} with name #{drug.drug_name} with a price of #{drug.price_cents} and a type of #{drug.drug_type} was created."

# puts "Seeds created"

require 'csv'


csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'db/drug_seeds.csv'

puts "Creating drug seeds"

counter = 0

CSV.foreach(filepath, csv_options) do |row|
  # puts "#{row["Title"]}, #{row["Type"]}, #{row["Variant Price"]}"
  Drug.create!(drug_name: row["Title"], description:row["Type"], price_cents: row["Variant Price"].to_f * 100, image: row["Image Src"] )
  counter += 1
end

puts "Created #{counter} drug seeds"





















