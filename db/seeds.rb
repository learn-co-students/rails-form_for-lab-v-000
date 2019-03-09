Student.create([{ first_name: "Rick", last_name: "Sanchez" }, { first_name: "Morty", last_name: "Smith" }])


class_list = [
  [ "React", 401 ],
  [ "Python",  101],
  [ "Sinatra", 201 ],
  [ "Ruby on Rails",  301]
]

class_list.each do |title, room_number|
  SchoolClass.create( title: title, room_number: room_number )
end