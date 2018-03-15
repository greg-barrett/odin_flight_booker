class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.date :departure_date
      t.integer :flight_duration

      t.timestamps
    end
  end
end
