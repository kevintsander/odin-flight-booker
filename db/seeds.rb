# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env == 'development'
  Flight.delete_all
  Airport.delete_all

  Airport.create(code: 'CVG')
  Airport.create(code: 'ATL')
  Airport.create(code: 'DFW')
  Airport.create(code: 'DEN')
  Airport.create(code: 'ORD')
  Airport.create(code: 'LAX')
  Airport.create(code: 'CLT')
  Airport.create(code: 'MCO')
  Airport.create(code: 'LAS')
  Airport.create(code: 'PHX')
  Airport.create(code: 'MIA')
  Airport.create(code: 'SEA')
  Airport.create(code: 'IAH')
  Airport.create(code: 'JFK')
  Airport.create(code: 'EWR')
  Airport.create(code: 'FLL')
  Airport.create(code: 'MSP')
  Airport.create(code: 'SFO')
  Airport.create(code: 'DTW')
  Airport.create(code: 'BOS')
  Airport.create(code: 'SLC')
  Airport.create(code: 'PHL')
  Airport.create(code: 'BWI')
  Airport.create(code: 'TPA')
  Airport.create(code: 'SAN')
  Airport.create(code: 'LGA')
  Airport.create(code: 'MDW')
  Airport.create(code: 'BNA')
  Airport.create(code: 'IAD')

  10_000.times do
    flight = Flight.new
    flight.departure_airport = Airport.order('RANDOM()').first # RAND is DB specific & subject to change
    flight.arrival_airport = Airport.where.not(code: flight.departure_airport.code).order('RANDOM()').first
    flight.duration_minutes = rand(90..700)
    flight.depart_datetime = rand(DateTime.now..(DateTime.now + 30))
    flight.save
  end
end
