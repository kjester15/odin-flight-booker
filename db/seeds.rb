# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Airport.destroy_all
airports = []
%w[PDX BOS JFK LAS DEN SAN ORD DWF].each do |airport_code|
  airports << Airport.create(code: airport_code)
end

100.times do
  Flight.create([{ date_time: DateTime.now + rand(1..90).days, duration: rand(60..400), departure_id: airports.sample.id, arrival_id: airports.sample.id }])
end