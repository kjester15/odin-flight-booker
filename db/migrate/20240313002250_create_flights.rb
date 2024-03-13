class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.datetime :date_time, null: false
      t.integer :duration, null: false
      t.timestamps
    end
  end
end
