class CreateTripTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_types do |t|
      t.integer :id_trip_type
      t.string :nombre

      t.timestamps
    end
  end
end
