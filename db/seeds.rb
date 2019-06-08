# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: 'Homer', last_name: 'Simpson')
Student.create(first_name: 'Bart', last_name: 'Simpson')

SchoolClass.create(title: 'Math', room_number: '100')
SchoolClass.create(title: 'Gym', room_number: '300')
