# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Ian", last_name: "Gut")
Student.create(first_name: "Waldo", last_name: "Gut")
Student.create(first_name: "Joanne", last_name: "Gut")
Student.create(first_name: "Steve", last_name: "Gut")
Student.create(first_name: "Fred", last_name: "Gut")

SchoolClass.create(title: "Bio", room_number: "107")
SchoolClass.create(title: "Calc", room_number: "103")
SchoolClass.create(title: "Chem", room_number: "104")
SchoolClass.create(title: "Algebra", room_number: "105")
SchoolClass.create(title: "History", room_number: "106")
