class AddIdToPassengers < ActiveRecord::Migration[5.0]
  def up
  	remove_column :guide_trips, :id_guide_trip
  	remove_column :passenger_trips, :id_passenger_trip  	
  	remove_column :trip_types, :id_trip_type
  	remove_column :trips, :id_trip
  end
end
