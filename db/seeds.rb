# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SchoolClass.create(title: "Advanced Spellcasting", room_number: 1538)
SchoolClass.create(title: "Transfigurations", room_number: 52)
SchoolClass.create(title: "Defense against the Dark Arts", room_number: 5242)
SchoolClass.create(title: "Herbology", room_number: 2)
SchoolClass.create(title: "Potions", room_number: -3252)
SchoolClass.create(title: "Charms", room_number: 10304)
SchoolClass.create(title: "Mastering the Force", room_number: 1)
SchoolClass.create(title: "Algorithms", room_number: 3000)
Student.create(first_name: "Micah", last_name: "Shute")
Student.create(first_name: "Kristina", last_name: "Schwartz")
Student.create(first_name: "Taylor", last_name: "Swift" )