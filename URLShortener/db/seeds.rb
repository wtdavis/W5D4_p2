# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create(email: "google@google.com")
user2 = User.create(email: "alvin@aa.io")
# user3 = User.create(email: "alvin@aa.io") => silent error at constraint level