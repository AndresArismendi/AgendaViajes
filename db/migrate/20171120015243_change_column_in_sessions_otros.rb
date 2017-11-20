class ChangeColumnInSessionsOtros < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :sessions, :nombre, ""
  	change_column_default :sessions, :rut, ""
  	change_column_default :sessions, :fono, ""
  	change_column_default :sessions, :tipo_vehiculo, ""
  end  
end
