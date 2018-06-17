# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create([{ first_name: 'Sunny', last_name: 'Khan' }, { first_name: 'Ali', last_name: 'Farukh' }])

SchoolClass.create([{ title: 'Biology', room_number: 1 }, { title: 'Chemistry', room_number: 2 }])
