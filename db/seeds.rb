# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Quote.destroy_all
Service.destroy_all
User.destroy_all
User.create(first_name: 'Justin', last_name: 'Kemmerer', email: 'icacnt@gmail.com', owner: true, admin: true, password: 'decaff', password_confirmation: 'decaff')
User.create(first_name: 'Joe', last_name: 'Smoe', email: 'joe@shmoe.com', admin: true, password: 'decaff', password_confirmation: 'decaff')
User.create(first_name: 'John', last_name: 'Doe', email: 'john@doe.com', admin: true, password: 'decaff', password_confirmation: 'decaff')
User.create(first_name: 'Jane', last_name: 'Doe', email: 'jane@doe.com', admin: true, password: 'decaff', password_confirmation: 'decaff')
User.create(first_name: 'Bob', last_name: 'Barker', email: 'bob@barker.com', admin: true, password: 'decaff', password_confirmation: 'decaff')

Service.create(service_name: 'Venue')
Service.create(service_name: 'Catering')
Service.create(service_name: 'DJ')
Service.create(service_name: 'Phtographer')
