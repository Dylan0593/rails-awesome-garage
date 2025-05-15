# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end






puts "Cleaning up database..."

Car.destroy_all
Owner.destroy_all


owner_1 = Owner.create!(nickname: "Deji")
owner_2 = Owner.create!(nickname: "Dylan")
owner_3 = Owner.create!(nickname: "Luffy")



puts "Creating recipes..."

Car.create!(
  brand: "Mercedes",
  model: "C-class AMG",
  year: "2015",
  fuel: "Disel",
  owner: owner_1
)

Car.create!(
  brand: "BMW",
  model: "I8",
  year: "2017",
  fuel: "Eletric",
  owner: owner_2
)

Car.create!(
  brand: "Audi",
  model: "R8",
  year: "2018",
  fuel: "Petrol",
  owner: owner_3
)


puts "Done!"
