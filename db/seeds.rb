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
   start_date: "2022-04-12", end_date: "2022-05-01")

wrestlemania = Event.create(name: "wrestlemania", location: "USA", price: 1000,
   start_date: "2022-06-12", end_date: "2022-07-01")

fifa = Event.create(name: "fifa world cup", location: "Qatar", price: 5000,
   start_date: "2022-08-12", end_date: "2022-09-01")

juanEvent = Event.create(name: "juan event", location: "Ecuador", price: 5000,
   start_date: "2022-08-12", end_date: "2022-09-01")

zamanEvent = Event.create(name: "zaman event", location: "Pakistan", price: 7000,
   start_date: "2022-09-12", end_date: "2022-10-01")

tafaraEvent = Event.create(name: "tafara event", location: "India", price: 7000,
   start_date: "2022-10-12", end_date: "2022-11-01")

reserve1 = Reservation.create(city: 'Guadalajara', start: '2022-07-21', end: '2023-09-12', user_id: tafara.id, event_id: tomorrowland.id)
reserve2 = Reservation.create(city: 'Lahore', start: '2022-08-21', end: '2023-09-12', user_id: juan.id, event_id: tomorrowland.id)
reserve3 = Reservation.create(city: 'Quito', start: '2022-09-23', end: '2023-09-12', user_id: zaman.id, event_id: tomorrowland.id)
reserve4 = Reservation.create(city: 'Lima', start: '2022-04-24', end: '2023-09-12', user_id: tafara.id, event_id: wrestlemania.id)
reserve5 = Reservation.create(city: 'San Juan', start: '2022-01-11', end: '2023-09-12', user_id: juan.id, event_id: wrestlemania.id)
reserve6 = Reservation.create(city: 'Montevideo', start: '2022-08-01', end: '2023-09-12', user_id: zaman.id, event_id: wrestlemania.id)
reserve7 = Reservation.create(city: 'Rio de Janeiro', start: '2022-09-05', end: '2023-09-12', user_id: tafara.id, event_id: fifa.id)
reserve8 = Reservation.create(city: 'Buenos Aires', start: '2022-07-07', end: '2023-09-12', user_id: juan.id, event_id: fifa.id)
reserve9 = Reservation.create(city: 'Santiago', start: '2022-09-09', end: '2023-09-12', user_id: zaman.id, event_id: zamanEvent.id)
reserve10 = Reservation.create(city: 'Bogota', start: '2022-10-10', end: '2023-09-12', user_id: tafara.id, event_id: tafaraEvent.id)
reserve11 = Reservation.create(city: 'Madrid', start: '2022-11-11', end: '2023-09-12', user_id: juan.id, event_id: juanEvent.id)