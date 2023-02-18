require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1000.times do
  employees = 5000.times.map { |t| { fullname: Faker::Name.name,e_number:  Faker::Number.number(digits: 10),created_at: Time.now, updated_at: Time.now }}
  Employee.insert_all(employees)
end