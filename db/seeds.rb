# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name: 'Jason', last_name: 'Kemmerer', email: 'gpsxsirus@gmail.com', owner: true, admin: true, password: 'decaff', password_confirmation: 'decaff')