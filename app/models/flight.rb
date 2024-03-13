class Flight < ApplicationRecord
  has_many :airports
  has_many :departure_airports, through: :departures #source: 
  has_many :arrival_airports, through: :arrivals #source: 
end
