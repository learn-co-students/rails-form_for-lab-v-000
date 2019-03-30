# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: 'John', last_name: 'Smith')
Student.create(first_name: 'Ana', last_name: 'Banana')
SchoolClass.create(title: 'Geometry', room_number: '345')
SchoolClass.create(title: 'English', room_number: '111')
