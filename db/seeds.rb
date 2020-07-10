# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = 10000.times.map { 
                          {
                            name: Faker::Name.name, 
                            lat: Faker::Address.longitude, 
                            lng: Faker::Address.latitude,
                            created_at: Time.now, 
                            updated_at: Time.now
                          }
                        }
User.insert_all(users)
