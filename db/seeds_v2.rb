

require 'csv'

require 'open-uri'

# url = 'https://gist.githubusercontent.com/DominicLizarraga/2202ee086d9292c3d0feb0ad5c803885/raw/18d1c939bf1b7889ae4deb588478b6c85f57e36b/gistfile1.txt'
# drug_serialized = open(url).read


# puts "#{drug['name']} - #{user['bio']}"


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

