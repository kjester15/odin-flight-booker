class AddAirportsToFlights < ActiveRecord::Migration[7.1]
  def change
    add_reference :flights, :departure, foreign_key: { to_table: :airports }
    add_reference :flights, :arrival, foreign_key: { to_table: :airports }
  end
end
