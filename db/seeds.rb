# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: 'admin')
AdminUser.create!(email: 'read@example.com', password: 'password', password_confirmation: 'password', role: 'read')

Book.destroy_all

Book.create!([{
  user_id: "1",
  title: "Physics",
  author: "Pete Docter",
  description: "A.",
},
{
  user_id: "1",
  title: "Biology",
  author: "Pete Docter",
  description: "B.",
},
{
  user_id: "1",
  title: "English",
  author: "Pete Doct",
  description: "C.",
}])