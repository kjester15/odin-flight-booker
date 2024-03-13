class CreateArrivals < ActiveRecord::Migration[7.1]
  def change
    create_table :arrivals do |t|
      t.references :arrival_airport, null: false, foreign_key: { to_table: :airports }
      t.references :arriving_flight, null: false, foreign_key: { to_table: :flights }

      t.timestamps
    end
  end
end
