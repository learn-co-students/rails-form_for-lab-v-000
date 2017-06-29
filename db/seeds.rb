# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(:first_name => "William", :last_name => "Barela")
Student.create(:first_name => "Alejandra", :last_name => "Marin")

SchoolClass.create(:title => "Physics 101", :room_number => 123)
SchoolClass.create(:title => "Chemistry 503", :room_number => 205)
