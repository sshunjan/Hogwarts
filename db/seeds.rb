# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.delete_all
House.delete_all

8.times do
  house = House.create(name: Faker::HarryPotter.unique.house,
                       points: Faker::Number.number(2))

  number_of_students = Faker::Number.number(2).to_i

  puts "Adding #{number_of_students} students to #{house.name}"

  number_of_students.times do
    house.students.create(name: Faker::Name.name)
  end

end
