# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


students = Student.create([{first_name: "Mary", last_name: "Smith"}, {first_name: "Willie", last_name: "Pumfret"}, {first_name: "Jamey", last_name: "Aebersold"}])
SchoolClass.create([{title: "Western Civ 1", room_number: 3}, {title: "Math 2", room_number: 2}])
