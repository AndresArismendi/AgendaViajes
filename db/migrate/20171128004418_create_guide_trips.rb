class CreateGuideTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :guide_trips do |t|
      t.integer :id_guide_trip
      t.integer :id_trip
      t.integer :id_guide

      t.timestamps
    end
  end
end
