# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airport.delete_all
Flight.delete_all
Airport.create(name: "San Francisco", code: "SFO")
Airport.create(name: "New York", code: "JFK")
Airport.create(name: "London", code: "LGW")
Airport.create(name: "Malaga", code: "MAL")
Airport.create(name: "Manchester", code: "MAN")
Airport.create(name: "Paris", code: "CDG")
Airport.create(name: "Leeds", code: "LBA")
Airport.create(name: "Madrid", code: "MAD")
Airport.create(name: "Hong Kong", code: "HKG")


airports=Airport.all
day=1
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.first, arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end

day=2
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "New York"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=7
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "London"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=5
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "Malaga"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=4
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "Manchester"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=14
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "Paris"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=1
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "Leeds"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=1
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "Madrid"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end
day=1
airports.each do |airport|
  day+=1
  Flight.create(departure_airport:Airport.find_by(name: "Hong Kong"), arrival_airport:airport, departure_date:(Date.today+day), flight_duration: 5 )
end

bads=Flight.all

bads.each do |bad|
  if bad.departure_airport == bad.arrival_airport
    bad.delete
  end
end


Flight.create(departure_airport:Airport.first, arrival_airport:Airport.last, departure_date:(Date.today), flight_duration: 5 )
Flight.create(departure_airport:Airport.first, arrival_airport:Airport.last, departure_date:(Date.today), flight_duration: 4 )
Flight.create(departure_airport:Airport.first, arrival_airport:Airport.last, departure_date:(Date.today), flight_duration: 3 )
