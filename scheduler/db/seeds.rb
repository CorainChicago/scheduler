# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do 
  User.create!([
  {
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    status: "student",
    password: Faker::Internet.password
  }
  ])
end

10.times do 
  User.create!([
  {
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    status: "teacher",
    password: Faker::Internet.password
  }
  ])
end

5.times do
  Appointment.create!([
    {
      tutor_id: 1,
      student_id: 1,
      time: DateTime.strptime("09/14/2016 8:00", "%m/%d/%Y %H:%M")
    }
  ])
end

5.times do |x|
  Appointment.create!([
    {
      tutor_id: 2,
      student_id: x,
      time: DateTime.strptime("09/14/2016 13:00", "%m/%d/%Y %H:%M")
    }
    ])
end