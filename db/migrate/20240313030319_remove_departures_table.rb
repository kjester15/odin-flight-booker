class RemoveDeparturesTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :departures
    drop_table :arrivals
  end
end
