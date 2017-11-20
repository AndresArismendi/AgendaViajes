class AddColumnToSessionsOtros < ActiveRecord::Migration[5.0]
  def up
  	add_column :sessions, :nombre, :string, default: nil
  	add_column :sessions, :rut, :string, default: nil
  	add_column :sessions, :fono, :string, default: nil
  	add_column :sessions, :tipo_vehiculo, :string, default: nil


  end
  def down
  	remove_column :sessions, :nombre
  	remove_column :sessions, :rut
  	remove_column :sessions, :fono
  	remove_column :sessions, :tipo_vehiculo
  end
end
