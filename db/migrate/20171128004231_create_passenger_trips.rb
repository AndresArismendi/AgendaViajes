class CreatePassengerTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :passenger_trips do |t|
      t.integer :id_passenger_trip
      t.integer :id_passenger
      t.integer :id_trip

      t.timestamps
    end
  end
end
