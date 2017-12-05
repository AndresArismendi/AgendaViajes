class AddColumnToDevise < ActiveRecord::Migration[5.0]
 def up
  	add_column :sessions, :telefono_emergencia, :string, default: ""
  	add_column :sessions, :nombre_contacto_emergencia, :string, default: ""
  	add_column :sessions, :patente_vehiculo, :string, default: ""  	

  end
  def down
  	remove_column :sessions, :telefono_emergencia
  	remove_column :sessions, :nombre_contacto_emergencia
  	remove_column :sessions, :patente_vehiculo
  	
  end
end
