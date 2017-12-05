class AddTimestamp < ActiveRecord::Migration[5.0]
  def change   
  	change_column :passenger_trips, :id_passenger_trip, :integer, :auto_increment => true
  	change_column :trip_types, :id_trip_type, :integer, :auto_increment => true
  	change_column :trips, :id_trip, :integer, :auto_increment => true
  	change_column :guide_trips, :id_guide_trip, :integer, :auto_increment => true
  end
end
