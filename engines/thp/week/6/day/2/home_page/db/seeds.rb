# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



HomePage::Moussaillon.destroy_all

HomePage::Moussaillon.create(email:"azerty@uiop.qs", anonymous_username:"azerty_token", password:"azerty").errors

10.times do

      HomePage::Moussaillon.create email:Faker::Internet.email, anonymous_username:Faker::Name.name, password:"azerty"

end

puts "#{HomePage::Moussaillon.all.count} moussaillons generés"
