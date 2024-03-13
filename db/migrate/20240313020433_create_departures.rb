class CreateDepartures < ActiveRecord::Migration[7.1]
  def change
    create_table :departures do |t|
      t.references :departure_airport, null: false, foreign_key: { to_table: :airports }
      t.references :departing_flight, null: false, foreign_key: { to_table: :flights }

      t.timestamps
    end
  end
end
