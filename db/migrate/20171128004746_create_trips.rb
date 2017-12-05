class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :id_trip
      t.integer :id_passenger_trip
      t.integer :id_guide_passenger
      t.integer :id_trip_type
      t.string :trip_name
      t.date :trip_date

      t.timestamps
    end
  end
end
