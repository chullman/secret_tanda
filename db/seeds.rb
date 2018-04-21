require 'csv'
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'MockData.csv'))
# # add csv file to seeds
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Activity.new
#   # MAKE SURE YOU PLACE THE ID HERE TOO
#   t.name = row['name']
#   t.description = row['description']
#   t.is_embarrassing = row['is_embarrassing']
#   t.save
#   puts "#{t.name} saved"
# end
# puts "There are now #{Activity.count} rows in the Activities table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'locations.csv'))
# add csv file to seeds
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Location.new
  # MAKE SURE YOU PLACE THE ID HERE TOO
  t.city = row['city']
  t.save
  puts "#{t.city} saved"
end
puts "There are now #{Location.count} rows in the locations table"
