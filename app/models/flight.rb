class Flight < ApplicationRecord
  has_many :departure_airports, class_name: "Airport"
  has_many :arrival_airports, class_name: "Airport"
end
