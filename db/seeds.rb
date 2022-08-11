# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
tafara = User.create(name: "Tafara")
juan = User.create(name: "Juan")
zaman = User.create(name: "Zaman")

tomorrowland = Event.create(name: "tomorrowland", location: "USA", price: 1000,
   start_date: "09/12/2022", end_date: "12/12/2022")

reservation1 = Reservation.create(date: "10/12/2022", city: "Barcelona", user_id: tafara.id, event_id: tomorrowland.id)